# Minimal Initramfs
Just a minimal Linux `initramfs` written in Rust. The magic is in the Makefile.

Use this project as a starting point for more complicated projects that act as their own Linux `initramfs` (no `systemd`).

To build, start with a working `rust` environment. Install the `musl` target:
```
rustup target add x86_64-unknown-linux-musl
```

Then:
```
make
```

Now, you've got a file, `initramfs_minimal` that can be used as an initramfs for Linux.

