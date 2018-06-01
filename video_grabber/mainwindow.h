#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include <opencv2/opencv.hpp>
#include <camerasettings.h>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT
public slots:
    void DisplayPreview();    
    void PipeCameraFrame();

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    void ParseOptionsFile();
    QString GenerateGStreamerPipeline();
    QImage imdisplay;

private slots:
    void on_loadOptions_clicked();

    void on_saveLocation_clicked();
    
    void on_saveOptions_clicked();

    void on_recordButton_clicked();

    void on_previewButton_clicked();

private:
    Ui::MainWindow *ui;
    cv::VideoCapture cap;
    cv::VideoWriter writer;
    QTimer* timer;
    CameraSettings* settings;
    bool recording = false;
    bool preview = false;
};

#endif // MAINWINDOW_H
