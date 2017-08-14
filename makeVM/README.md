# Create the VM

- Download and install [Python][python] on your server (tested on Python 2.7.12)
- Install a packaged [virtualbox][virtualbox] on your server.

Get the git repository and go to this directory:

```baah
git clone https://github.com/thejohnhoffer/ubuntu_packer
cd bflyVM/makeVM
```

- Download and unzip a packer executable as `packer` in the `bflyVM/makeVM` directory
    - Set `MY_PACKER` to the correct link for your system on the [packer downloads][packer] page.
- On a 64-bit linux host server, for example:

```bash
MY_PACKER=https://releases.hashicorp.com/packer/1.0.3/packer_1.0.3_linux_amd64.zip
wget $MY_PACKER -O tmp.zip
unzip -p tmp.zip > packer
chmod +x packer
rm tmp.zip
```
