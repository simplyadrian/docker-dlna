#!/bin/bash
set -e

test -n "$NIC" && sed -i "s/^#network_interface=.*/network_interface=$NIC/g" /etc/minidlna.conf

exec minidlnad -R -d
