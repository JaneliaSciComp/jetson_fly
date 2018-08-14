#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <phidget22.h>
#include "PhidgetHelperFunctions.h"
#include <boost/asio.hpp>
#include <thread>
#include <iostream>


std::atomic<bool> stop(false);

void square_wave(PhidgetVoltageOutputHandle* ch) {
    boost::asio::io_service io;
    bool volt_switch = false;

    while (!stop.load()) {
        boost::asio::deadline_timer tooo(io, boost::posix_time::seconds(.05));
        
        if (volt_switch) {
            PhidgetVoltageOutput_setVoltage(ch[0], 0);
            PhidgetVoltageOutput_setVoltage(ch[1], 5);
            PhidgetVoltageOutput_setVoltage(ch[2], 0);
            PhidgetVoltageOutput_setVoltage(ch[3], 5);
            volt_switch = false;
        } else {
            PhidgetVoltageOutput_setVoltage(ch[0], 5);
            PhidgetVoltageOutput_setVoltage(ch[1], 0);
            PhidgetVoltageOutput_setVoltage(ch[2], 5);
            PhidgetVoltageOutput_setVoltage(ch[3], 0);
            volt_switch = true;
        }
        tooo.wait();

    }
}

/**
* Creates, configures, and opens a VoltageOutput channel.
* Sets output voltage based on user input
* Closes out VoltageOutput channel
*
* @return 0 if the program exits successfully, 1 if it exits with errors.
*/
int main() {
	PhidgetVoltageOutputHandle* ch;
        ch = new PhidgetVoltageOutputHandle[4];
	ChannelInfo channelInfo; //Information from AskForDeviceParameters(). May be removed when hard-coding parameters.
	PhidgetReturnCode prc; //Used to catch error codes from each Phidget function call

	PhidgetVoltageOutput_create(&ch[0]);
	Phidget_setChannel((PhidgetHandle)ch[0], 0);
        PhidgetVoltageOutput_create(&ch[1]);
        Phidget_setChannel((PhidgetHandle)ch[1], 1);
        PhidgetVoltageOutput_create(&ch[2]);
        Phidget_setChannel((PhidgetHandle)ch[2], 2);
        PhidgetVoltageOutput_create(&ch[3]);
        Phidget_setChannel((PhidgetHandle)ch[3], 3);
 

	/*
	* Open the channel with a timeout
	*/
	printf("Opening and Waiting for Attachment...\n");
	prc = Phidget_openWaitForAttachment((PhidgetHandle)ch[0],1000);
        prc = Phidget_openWaitForAttachment((PhidgetHandle)ch[1],1000);
        prc = Phidget_openWaitForAttachment((PhidgetHandle)ch[2],1000);
        prc = Phidget_openWaitForAttachment((PhidgetHandle)ch[3],1000);
std::cout << "Finished creating channels for Voltage output\n";
        std::thread t(square_wave, ch);
        std::cin.get();
        stop = true;

	printf("Cleaning up...\n");
	prc = Phidget_close((PhidgetHandle)ch[0]);
	CheckError(prc, "Closing Channel", (PhidgetHandle *)&ch[0]);
	prc = PhidgetVoltageOutput_delete(&ch[0]);
	CheckError(prc, "Deleting Channel", (PhidgetHandle *)&ch[0]);
	printf("\nExiting...\n");

	return 0;

}
