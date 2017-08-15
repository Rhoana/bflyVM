# bflyVM

- Install the latest [virtualbox][virtualbox] on your Linux, MacOS, or Windows server.
- Install the latest [packer][packer] on your Linux, MacOS, or Windows server.

## Download everything

Get the git repository and go to this directory:

```bash
git clone https://github.com/Rhoana/bflyVM
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

## Create the hostonlyif

```bash
bash ./network.sh
```

## Running packer

```bash
./packer build butterfly_pack.json
```

[virtualbox]: https://www.virtualbox.org/wiki/Downloads	
[packer]: https://www.packer.io/downloads.html
