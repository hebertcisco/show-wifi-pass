#!/bin/sh

main() {

    noAPT() {
        echo 'Your sistem need the apitude to run this is script...'
        exit
    }

    removingAptCrashes() {
        echo 'Removing any apt crashes...'
        sudo rm /var/lib/dpkg/lock-frontend
        sudo rm /var/cache/apt/archives/lock
        sudo apt-get update
    }

    installRequiredLibraries() {
        # Install some required libraries
        echo 'Installing some required libraries...'
        sudo apt-get install libraries
    }

    removingPackages() {
        # Removing unused packages.
        echo 'Removing unused packages.'
        rm -rf file.deb

    }
    if ! [ -x "$(command -v apt)" ]; then
        noAPT "$1" >&2
        exit 1
    else
        removingAptCrashes "$1"
        installRequiredLibraries "$1"
        removingPackages "$1"
    fi
}

main "$1"
