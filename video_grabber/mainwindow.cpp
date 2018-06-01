#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <opencv2/opencv.hpp>
#include <QTimer>
#include <QFileDialog>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonValue>
#include <QtDebug>
#include <QMessageBox>
#include <QSize>
#include <QProcess>

using namespace cv;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    settings = new CameraSettings();
    ui->setupUi(this);

    ui->loadOptions->setToolTip(("Load Movie/Camera Options From JSON File"));
    ui->saveOptions->setToolTip(("Save Movie/Camera Options To JSON File"));

    // combo box items
    ui->cameraSourceOptions->addItem("Device Node 0 (video0)","Device Node 0 (video0)");
    ui->cameraSourceOptions->addItem("Device Node 1 (video1)","Device Node 1 (video1)");
    ui->cameraSourceOptions->addItem("Device Node 2 (video2)","Device Node 2 (video2)");

    ui->resolutionOptions->addItem("640x480","640x480");
    ui->resolutionOptions->addItem("1280x720","1280x720");
    ui->resolutionOptions->addItem("1920x1080","1920x1080");

    ui->fps_options->addItem("30","30");
    ui->fps_options->addItem("60","60");
    ui->fps_options->addItem("120","120");
    ui->fps_options->addItem("240","240");
   // DisplayPreview();
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::ParseOptionsFile() {

}

// this method takes the current camera options and generates the appropriate
// gstreamer pipeline command for capturing video
QString MainWindow::GenerateGStreamerPipeline() {
    return "nvcamerasrc wb=0 ce=0 ae=1 ! video/x-raw(memory:NVMM), width=(int)" + settings->getWidth() +
                ", height=(int)" + settings->getHeight() + ", format=(string)I420, framerate=(fraction)" + settings->getFPS() +
                "/1 ! nvvidconv flip-method=0 ! video/x-raw, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink";
}

void MainWindow::DisplayPreview() {
     cv::Mat frame;
     cap >> frame;  // Get a new frame from camera
     cv::resize(frame, frame, Size(561, 316), 0, 0, INTER_LINEAR);
     cv::cvtColor(frame, frame, CV_BGR2RGB);
     QImage imdisplay((uchar*)frame.data, frame.cols, frame.rows, frame.step, QImage::Format_RGB888);
     ui->VideoPreview->setPixmap(QPixmap::fromImage(imdisplay));
}

void MainWindow::PipeCameraFrame() {
     cv::Mat frame;
     cap >> frame;
     writer.write(frame);
}

void MainWindow::on_loadOptions_clicked()
{
    QString filename = QFileDialog::getOpenFileName(this,
                    tr("Load Options File"), "",
                    tr("Movie Options(*.json);;All Files(*)"));
    QFile file;
    file.setFileName(filename);
    file.open(QIODevice::ReadOnly | QIODevice::Text);
    QString val = file.readAll();
    file.close();
    QJsonDocument d = QJsonDocument::fromJson(val.toUtf8());
    QJsonObject parent = d.object();
    // populate options based off JSON file

    QJsonValue fpsValue = parent.value(QString("fps"));
    if (!fpsValue.isNull()) {
        int index = ui->fps_options->findData(fpsValue);
        ui->fps_options->setCurrentIndex(index);
    }
    QJsonValue resolutionValue = parent.value(QString("resolution"));
    if (!resolutionValue.isNull()) {
        int index = ui->resolutionOptions->findData(resolutionValue);
        ui->resolutionOptions->setCurrentIndex(index);
    }
    QJsonValue saveLocationValue = parent.value(QString("save_location"));
    if (!saveLocationValue.isNull()) {
        ui->saveFilename->setText(saveLocationValue.toString());
    }
    QJsonValue compressionValue = parent.value(QString("compression"));
    if (!compressionValue.isNull()) {
        if (compressionValue.toString() == "h264") {
            ui->h264_checkbox->setChecked(true);
        }
    }
    QJsonValue sourceValue = parent.value(QString("csi_source"));
    if (!sourceValue.isNull()) {
        int index = ui->cameraSourceOptions->findData(sourceValue);
        ui->cameraSourceOptions->setCurrentIndex(index);
    }
}

void MainWindow::on_saveLocation_clicked()
{
    QString filename = QFileDialog::getSaveFileName(this,
                    tr("Choose where to Save Movie"), "",
                    tr("All Files(*)"));
    ui->saveFilename->setText(filename);
}


void MainWindow::on_saveOptions_clicked()
{
    QString filename = QFileDialog::getSaveFileName(this,
                    tr("Save Options File"), "",
                    tr("Movie Options(*.json);;All Files(*)"));
    QFile file;
    file.setFileName(filename);
    if (!file.open(QIODevice::WriteOnly)) {
         QMessageBox::information(this, tr("Unable to open file handle for writing"),
                 file.errorString());
         return;
    }

    QJsonObject cameraOptions;
    cameraOptions["fps"] = QJsonValue::fromVariant(ui->fps_options->itemData(ui->fps_options->currentIndex()));
    cameraOptions["resolution"] = QJsonValue::fromVariant(ui->resolutionOptions->itemData(ui->resolutionOptions->currentIndex()));
    cameraOptions["save_location"] = QJsonValue::fromVariant(ui->saveFilename->text());
    QString compression("none");
    if (ui->h264_checkbox->isChecked()) {
        compression = "h264";
    }
    cameraOptions["compression"] = compression;
    cameraOptions["csi_source"] = QJsonValue::fromVariant(ui->cameraSourceOptions->itemData(ui->cameraSourceOptions->currentIndex()));

    QJsonDocument optionsDocument(cameraOptions);
    file.write(optionsDocument.toJson());
}

void MainWindow::on_recordButton_clicked()
{
    if (!recording) {
        recording = true;

        // switch icon for button to stop
        ui->recordButton->setIcon(QIcon::fromTheme("media-playback-stop"));

        // Create OpenCV capture object, ensure it works.
        settings->setLatestValues(ui);
        QString gstreamer = GenerateGStreamerPipeline();
        std::cout << gstreamer.toUtf8().constData();
        cap = cv::VideoCapture(gstreamer.toUtf8().constData(), cv::CAP_GSTREAMER);
        if (!cap.isOpened()) {
            std::cout << "Connection failed";
            return;
        }

        // pipe video capture through writer to file
        QString gstWriter;
        if (settings->getCompression()=="h264") {
            gstWriter = "appsrc !  videoconvert ! omxh264enc ! qtmux ! filesink location=" + settings->getLocation() + " ";
        } else {
            gstWriter = "appsrc !  videoconvert ! qtmux ! filesink location=" + settings->getLocation() + " ";
        }
        std::cout << gstWriter.toUtf8().constData();
        int fourcc;
        if (settings->getCompression()=="h264") {
            fourcc = CV_FOURCC('H','2','6','4');
        } else {
            fourcc = CV_CAP_PROP_FOURCC;
        }
        writer = cv::VideoWriter(gstWriter.toUtf8().constData(), cap.get(fourcc),
                                 settings->getFPS().toFloat(), cv::Size(settings->getWidth().toInt(), settings->getHeight().toInt()));

        timer = new QTimer (this);
        connect(timer, SIGNAL(timeout()), this, SLOT(PipeCameraFrame()));
        timer->start((int)1000.0/settings->getFPS().toDouble());
    } else {
        recording = false;

        // switch icon for button to record
        ui->recordButton->setIcon(QIcon::fromTheme("media-record"));

        timer->stop();
        if (cap.isOpened()) {
            cap.release();
        }
        if (writer.isOpened()) {
            writer.release();
        }
    }
}

void MainWindow::on_previewButton_clicked()
{
    if (!preview) {

        ui->previewButton->setIcon(QIcon::fromTheme("application-exit"));
        preview = true;
        settings->setLatestValues(ui);
        if (settings->getIR()) {
            std::cout << "Enabling IR";
            QString irProgram = "/home/nvidia/qtprojects/Jetson_Video_Grabber/ir_enable.sh";
            QStringList arguments;
            QProcess *irProcess = new QProcess(this);
            irProcess->start(irProgram, arguments);
            irProcess->waitForFinished();
            QString output(irProcess->readAllStandardOutput());
            std::cout << output.toUtf8().constData();
        } else {
            std::cout << "Disabling IR";
            QString irProgram = "/home/nvidia/qtprojects/Jetson_Video_Grabber/ir_disable.sh";
            QProcess *irProcess = new QProcess(this);
            irProcess->start(irProgram);
            irProcess->waitForFinished();
            QString output(irProcess->readAllStandardOutput());
            std::cout << output.toUtf8().constData();
        }
        QString pipeline = "nvcamerasrc wb=0 ce=0 ae=1 ! video/x-raw(memory:NVMM), width=(int)" + settings->getWidth() +
                ", height=(int)" + settings->getHeight() + ", format=(string)I420, framerate=(fraction)" + settings->getFPS() +
                "/1 ! nvvidconv flip-method=0 ! video/x-raw, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink";

        cap =  cv::VideoCapture(pipeline.toUtf8().constData(), cv::CAP_GSTREAMER);
        if (!cap.isOpened()) {
            std::cout << "Connection failed";
            return;
        }
        timer = new QTimer (this);
        connect(timer, SIGNAL(timeout()), this, SLOT(DisplayPreview()));
        timer->start(30);
    } else {
        preview = false;

        ui->previewButton->setIcon(QIcon::fromTheme("camera_photo"));
        timer->stop();
        if (cap.isOpened()) {
            cap.release();
        }
        if (writer.isOpened()) {
            writer.release();
        }
    }

}
