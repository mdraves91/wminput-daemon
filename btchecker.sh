#/bin/bash
#btchecker.sh

while true
do 
    # Quit silently if there are no instances of wminput running
    if ! ps -ef | grep wminput | grep -v grep > /dev/null
    then
        break
    fi

    # If a local bluetooth device cannot be detected, stop the daemon.
    if ! hcitool dev | grep "hci*" > /dev/null
    then
        sudo service wminput-daemon stop
        break
    fi

sleep 5
done  
