all: initramfs_minimal

initramfs_minimal: ./target/x86_64-unknown-linux-musl/debug/MinimalInitramfs
	cp ./target/x86_64-unknown-linux-musl/debug/MinimalInitramfs ./init
	echo -n init | cpio --null --create -V --format=newc -O ./initramfs_minimal

./target/x86_64-unknown-linux-musl/debug/MinimalInitramfs: FORCE
	cargo build --target x86_64-unknown-linux-musl

FORCE:
