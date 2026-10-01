# Core Image Minimal for QEMU x86-64

This repository is a Yocto Project/Poky workspace configured to build
`core-image-minimal` for the `qemux86-64` machine and run it in QEMU.

## Build

Install the Yocto Project host dependencies for your Linux distribution, then
from the repository root run:

```bash
source oe-init-build-env
```

Set the target in `build/conf/local.conf`:

```conf
MACHINE = "qemux86-64"
```

Build the image:

```bash
bitbake core-image-minimal
```

The generated kernel and root filesystem are placed in
`build/tmp/deploy/images/qemux86-64/`.

## Run in QEMU

After the build completes:

```bash
./run.sh
```

The script currently expects this workspace at `/home/txr/poky`. If you clone
it elsewhere, update the two image paths in `run.sh`. To stop QEMU, press
`Ctrl+A`, then `X`.

## What to commit

Commit source, recipes, layers, scripts, and portable configuration samples.
Do not commit `build/`, downloaded sources, shared-state caches, logs, or
generated images: they are large, generated, and machine-specific.

For host dependencies and broader Yocto guidance, see the
[Yocto Project Quick Build guide](https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html).

## Upstream Poky reference
