#!/bin/bash

# Install Seafile-Cloud-Sync-Client
# ---------------------------------
zypper -n in seafile-client

# Install Visual Studio
# -----------------------
# To Get the download-link, install the Video-Download-Helper-Plugin for your browser. Navigate to https://code.visualstudio.com.
# Navigate to the bottom and dowload the arm-64 Version manually. Then use the Video-Download-Helper to get the link and paste it below:

DLLINK=https://az764295.vo.msecnd.net/stable/97dec172d3256f8ca4bfb2143f3f76b503ca0534/code-1.74.3-1673284165.el7.aarch64.rpm
wget -O /tmp/code.rpm $DLLINK
zypper -n --no-gpg-checks in /tmp/code.rpm
