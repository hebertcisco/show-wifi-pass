#!/bin/sh

main() {
    wifiProfiles() {
        echo 'Getting networks saved in the system...'
        cd /etc/NetworkManager/system-connections
        ls -a
    }

    getSSID() {
        echo 'Which network do you want to get the data from? Enter the network name:\n\n'
        read current_SSID
    }

    getSSIDData() {
        getSSID "$1"
        echo 'The password is in [wifi-security] psk...'
        sudo cat "$current_SSID".nmconnection

    }
    wifiProfiles "$1"
    getSSIDData "$1"
}

main "$1"
