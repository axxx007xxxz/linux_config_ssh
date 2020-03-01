#!/bin/bash
if [[ $UID != "0" ]]; then
	echo "ERROR: You must run this script as root!"
	exit 1
fi

# Copy configuration file and set its permissions
cp sshd_config /etc/ssh/sshd_config && chmod 600 /etc/ssh/sshd_config

# Reload current configurations
systemctl reload sshd

echo "Done."