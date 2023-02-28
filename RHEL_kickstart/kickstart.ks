#version=RHEL9
# Use graphical install
graphical

%addon com_redhat_kdump --enable --reserve-mb='auto'

%end

# Keyboard layouts
keyboard --xlayouts='us'
# System language
lang en_US.UTF-8

%packages
@^graphical-server-environment
@console-internet
@container-management
@debugging
@development
@dns-server
@dotnet
@file-server
@ftp-server
@graphical-admin-tools
@guest-agents
@headless-management
@infiniband
@legacy-unix
@mail-server
@network-file-system-client
@network-server
@performance
@remote-desktop-clients
@remote-system-management
@rpm-development-tools
@scientific
@security-tools
@smart-card
@smb-server
@system-tools
@virtualization-client
@virtualization-hypervisor
@virtualization-tools
@web-server

%end

# Run the Setup Agent on first boot
firstboot --enable

# Generated using Blivet version 3.4.0
ignoredisk --only-use=sda
autopart
# Partition clearing information
clearpart --none --initlabel

# System timezone
timezone America/New_York --utc

# Root password
rootpw --iscrypted $6$X46hl.yBylaiCUS4$HbyUyuHxeBECar4f4qrnIoZQO.zArVVHH.QEjNIa/c7mAxRWX7FcnqE1FGhDt.xRhULaBh0eMPA0MO5R7pICN.
