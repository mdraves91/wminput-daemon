wminput-daemon
==============

Simple startup script to launch two instances of wminput on boot. Written for and tested on Raspberry Pi.

Installing and Running:
-----------------------

To install the two scripts to their preferred locations, use the command `make install`.

To start, stop or restart the service on Raspbian, use the command `sudo service wminput-daemon {start|stop|restart}`.

Technical Details:
------------------

The reason for the btchecker script is because if something goes wrong and you lose your bluetooth service or your local bluetooth device (from, say, unplugging a usb bluetooth dongle) wminput will shoot up to 100% CPU usage. btchecker will check and make sure these things are okay every 5 seconds in an attempt to try and curb this issue.
