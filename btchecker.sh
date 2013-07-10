#/bin/bash
#btchecker.sh

while true
do 
    # Quit silently if there are no instances of wminput running
    if ! ps -ef | grep wminput | grep -v grep > /dev/null
    then
        break
    fi

    # If a problem has occurred with the bluetooth service or there is
    # no longer a local bluetooth device, stop the daemon.
    if ! ps -ef | grep "bluetooth" | grep -v "grep" > /dev/null || ! hcitool dev | grep "hci*" > /dev/null
    then
        sudo service wminput-daemon stop
        break
    fi

sleep 5
done  
