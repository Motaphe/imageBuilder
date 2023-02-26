#version=DEVEL
cdrom
text
skipx

# System language
lang en_US.UTF-8

# Keyboard layouts
keyboard us

# Root password
rootpw --iscrypted $6$8nqKbr.vZBHvbut6$cfp32JGbdIDHFNqIThKY0wlJspBkmJZ9PnkxUFKXJDKum0u.KmvU5wxTeJiMmEoQxe28Hky2CDgufSia9U.t90

# User creation
user --name ithinkthereforeiam --password $6$8nqKbr.vZBHvbut6$cfp32JGbdIDHFNqIThKY0wlJspBkmJZ9PnkxUFKXJDKum0u.KmvU5wxTeJiMmEoQxe28Hky2CDgufSia9U.t90 --iscrypted --gecos "admin user" --groups wheel

# Firewall configuration
firewall --enabled --ssh

# System services
services --enabled=sshd

# SELinux configuration
selinux --enforcing

# Disk partitioning
autopart --type=lvm

# Package selection
%packages
@^minimal-environment
podman
buildah
skopeo
git
wget
curl
vim
nano
jq
httpie
openssl
openssh-clients
openssh-server
passwd
sudo
util-linux-user
lsof
net-tools
iputils
bind-utils
traceroute
telnet
tcpdump
mtr
iproute
iptables
firewalld
selinux-policy-targeted

%end

# Post-installation scripts
%post
echo "Installation Success"
%end

