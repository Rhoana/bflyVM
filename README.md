# bflyVM

Install the [VirtualBox][virtualbox] distribution on your Linux, MacOS, or Windows server.

Unpack this repository:

```baah
git clone https://github.com/Rhoana/bflyVM
cd bflyVM
```

Create the local area network through VirtualBox:

```bash
bash ./makeVM/network.sh
```

## Download and import the VM

Download both files (1.1 GiB total) and import the ovf file:

```bash
wget http://monster.krash.net/d/bflyVM/bflyVM-disk001.vmdk
wget http://monster.krash.net/d/bflyVM/bflyVM.ovf
VBoxManage import bflyVM.ovf
```

## Prepare the guest additions

Install the extension pack for VirtualBox:

```bash
wget http://download.virtualbox.org/virtualbox/5.1.26/Oracle_VM_VirtualBox_Extension_Pack-5.1.26-117224.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.26-117224.vbox-extpack
rm Oracle_VM_VirtualBox_Extension_Pack-5.1.26-117224.vbox-extpack 
```

Set the environment variable `HOSTPATH` to a path on your system:

```bash
HOSTPATH="/your/image/folder/on/your/own/system/"
```

Now, add the hostpath as a shared folder:

```bash
VBoxManage sharedfolder add bflyVM --name data --hostpath $HOSTPATH --automount
```

## Start and conncet to the VM

Start the VM:

```bash
VBoxHeadless --startvm bflyVM &
```

By default, your username is `butterfly` and your password is `butterfly`.
The IP address is allocated by VirtualBox's host-only network.
Connect to the VM:

```bash
vboxip=`VBoxManage guestproperty enumerate bflyVM | grep IP`
ssh butterfly@$vboxip
```

## Inside the VM, set up your shared folder

Prepare guest additions:

```bash
sudo -S mkdir /mnt/dvd
sudo mount VBoxGuestAdditions.iso /mnt/dvd
sudo sh /mnt/dvd/VBoxLinuxAdditions.run
mkdir data & sudo umount /mnt/dvd
sudo rm VBoxGuestAdditions.iso
```

Now, mount the folder:

```bash
sudo mount -t vboxsf data data
```

Exit the VM ssh session:

```bash
exit
```

Power off the VM:
```bash
VBoxManage controlvm $bflyvm poweroff
```

[virtualbox]: https://www.virtualbox.org/wiki/Downloads
