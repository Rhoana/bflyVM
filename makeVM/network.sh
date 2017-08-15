if [[ -z $(VBoxManage list hostonlyifs) ]]; then
	VBoxManage hostonlyif create;
fi;
vboxnet=$(VBoxManage list hostonlyifs | egrep -o 'vboxnet.' | tail -1);
vboxip=$(VBoxManage list hostonlyifs | egrep -o '192\.168\.[^.]*' | tail -1);

VBoxManage dhcpserver add --enable --ifname $vboxnet --ip $vboxip.99 --netmask 255.255.255.0 --lowerip $vboxip.101 --upperip $vboxip.254;
