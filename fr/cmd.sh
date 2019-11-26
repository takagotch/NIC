ls -l /sys/class/net/
ls -l /sys/class/net/

nmcli connection
nmcli connection down eno1
nmcli connection show
nmcli device
nmcli device show
nmcli device show eno1

nmcli connection modify eno1 ipv4.addresses "10.0.0.82/24 10.0.0.1"
nmcli connection down eno1 && ipv4.routes "10.0.0.0/24 10.0.0.1"
nmcli connection down eno1 && nmcli connection up eno1 
nmcli device show eno1

nmcli device show eno1 | grep DNS
cat /etc/resolv.conf
vi /etc/NetworkManager/NetworkManager.conf
nmcli connection modify eno1 ipv4.dns "10.0.0.253"

nmcli connection down eno1 && nmcli connection up eno1
nmcli device show eno1 | grep DNS
systemctl restart NetworkManager
systemctl restart network
cat /etc/resolv.conf


nmcli device
nmcli connection delete eno1
nmcli device 
nmcli connection add type thernet ifname eno1 con-name eno1
nmcli device
nmcli connection modify eno1 ipv4.method manual ipv4.addresses
nmcli connection down eno1 && nmcli connection up eno1
nmcli device show eno1
cat /etc/sysconfig/network-scripts/ifcfg-eno1
nmcli general hostname
nmcli general hostname centos70n254.jpn.linux.hp.com
hostname
cat /etc/hostname

nmcli networking
nmcli networking on
ip link
nmcli networking off
nmcli networking
ip link
nmtui
ip a 
ip addr add 192.168.0.82.255.255.255.0 dev eno3
ip addr show eno3
ip link
ip route add default via 192.168.0.254
ip route del via 192.168.0.254
ip route
ip neigh
ip neigh flush 172.168.1.115 dev enp0s25
ip -s l
ss -ant
ss -anu

yum instal -y teamd
nmcli connection add type team con-name team0 ifname team0 config '{"runner": {"name": "roundrobin"}}'
nmcli connection modify team0 ipv4.method manual ipv4.method manual ipv4.addresses "172.16.70.99/16 172.16.1.1" ipv4.dns 172.16.1.1
nmcli connection add type team-slave autoconnect no ifname eth0 master team0
nmcli connection add type team-slave autoconnect no ifname ens7 master team0
systemctl restart network
nmcli connection modify team-slave-ens7 connection.autoconnect yes
ip a
cat /etc/sysconfig/network-scripts/ifcfg-team0
cat /etc/sysconfig/network-scripts/ifcfg-team-slave-eth0
cat /etc/sysconfig/network-scripts/ifcfg-team-slave-ens7

nmcli device
cp /etc/default/grub /etc/default/grub.org
vi /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
nmtui

cd /etc/sysconfig/network-scripts/
cat ifcfg-eth0
cat ifcfg-eth1
reboot


cd /etc/sysconfig/network-scripts/
mv ifcfg-eno1 org.ifcfg-eno1
mv ifcfg-eno2 org.ifcfg-eno2
mv ifcfg-eno3 org.ifcfg-eno3
mv ifcfg-eno4 org.ifcfg-eho4
cp org.ifcfg-eno1 ifcfg-eth0
cp org.ifcfg-eno2 ifcfg-eth1
cp org.ifcfg-eno3 ifcfg-eth2
cp org.ifcfg-eno4 ifcfg-eth3

vi ifcfg-eth0
reboot
nmcli device show



