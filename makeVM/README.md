# bflyVM

- Install the latest [virtualbox][virtualbox] on your Linux, MacOS, or Windows server.
- Install the latest [vagrant][vagrant] on your Linux, MacOS, or Windows server.

Get the git repository and go to this directory:

```bash
git clone https://github.com/thejohnhoffer/ubuntu_packer
cd bflyVM/makeVM
```

- Download and unzip a packer executable as `packer` in the `bflyVM/makeVM` directory
    - Set `MY_PACKER` to the correct link for your system on the [packer downloads][packer] page.
- On a 64-bit linux host server, for example:

```bash
wget http://download.virtualbox.org/virtualbox/5.1.26/Oracle_VM_VirtualBox_Extension_Pack-5.1.26-117224.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.26-117224.vbox-extpack
rm Oracle_VM_VirtualBox_Extension_Pack-5.1.26-117224.vbox-extpack 
```

## Create the hostonlyif

```bash
bash ./network.sh
```

## Running packer

```bash
./packer build butterfly_pack.json
```

## Starting the VM

```bash
VBoxHeadless --startvm bflyVM &
```
