# bflyVM

- Install the latest [virtualbox][virtualbox] on your Linux, MacOS, or Windows server.
- Install the latest [vagrant][vagrant] on your Linux, MacOS, or Windows server.

Install the VirtualBox extension pack:

```bash
wget http://download.virtualbox.org/virtualbox/5.1.26/Oracle_VM_VirtualBox_Extension_Pack-5.1.26-117224.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.26-117224.vbox-extpack
rm Oracle_VM_VirtualBox_Extension_Pack-5.1.26-117224.vbox-extpack 
```

Unpack this repository and go to this folder:

```baah
git clone https://github.com/Rhoana/bflyVM
cd bflyVM/makeVM
```

Create the VM
```bash
vagrant up
```

[virtualbox]: https://www.virtualbox.org/wiki/Downloads
[vagrant]: https://www.vagrantup.com/downloads.html
