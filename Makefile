ONE_SCRIPT_DIR=/var/lib/one

all: install

# for i in $(find ./src/ -type f); do echo install -D $i ${i#./src*}; done | sed 's/\#/\\\#/g';  
install:
	install -D -m 540 ./src/etc/sv/one-contextd/run /etc/sv/one-contextd/run
	install -D -m 540 ./src/etc/sv/one-contextd/log/run /etc/sv/one-contextd/log/run
	install -D -m 540 ./src/etc/one-context.d/net-97-start-script /etc/one-context.d/net-97-start-script
	install -D -m 540 ./src/etc/one-context.d/loc-16-gen-env /etc/one-context.d/loc-16-gen-env
	install -D -m 540 ./src/etc/one-context.d/loc-20-set-username-password /etc/one-context.d/loc-20-set-username-password
	install -D -m 540 ./src/etc/one-context.d/loc-14-mount-swap\#\#one /etc/one-context.d/loc-14-mount-swap\#\#one
	install -D -m 540 ./src/etc/one-context.d/loc-22-ssh_public_key /etc/one-context.d/loc-22-ssh_public_key
	install -D -m 540 ./src/etc/one-context.d/loc-24-ssh_host_key\#\#deb /etc/one-context.d/loc-24-ssh_host_key\#\#deb
	install -D -m 540 ./src/etc/one-context.d/loc-09-timezone /etc/one-context.d/loc-09-timezone
	install -D -m 540 ./src/etc/one-context.d/loc-04-run-dir /etc/one-context.d/loc-04-run-dir
	install -D -m 540 ./src/etc/one-context.d/net-15-hostname /etc/one-context.d/net-15-hostname
	install -D -m 540 ./src/etc/one-context.d/loc-10-network-pci\#\#one /etc/one-context.d/loc-10-network-pci\#\#one
	install -D -m 540 ./src/etc/one-context.d/loc-35-securetty /etc/one-context.d/loc-35-securetty
	install -D -m 540 ./src/etc/one-context.d/loc-10-network.d/netcfg-iproute2 /etc/one-context.d/loc-10-network.d/netcfg-iproute2
	install -D -m 540 ./src/etc/one-context.d/loc-10-network.d/functions /etc/one-context.d/loc-10-network.d/functions
	install -D -m 540 ./src/etc/one-context.d/loc-10-network.d/netcfg-scripts /etc/one-context.d/loc-10-network.d/netcfg-scripts
	install -D -m 540 ./src/etc/one-context.d/loc-30-console\#\#one /etc/one-context.d/loc-30-console\#\#one
	install -D -m 540 ./src/etc/one-context.d/net-99-report-ready /etc/one-context.d/net-99-report-ready
	install -D -m 540 ./src/etc/one-context.d/loc-05-grow-rootfs /etc/one-context.d/loc-05-grow-rootfs
	install -D -m 540 ./src/etc/one-context.d/loc-10-network /etc/one-context.d/loc-10-network
	install -D -m 540 ./src/etc/one-context.d/net-98-execute-scripts /etc/one-context.d/net-98-execute-scripts
	install -D -m 640 ./src/usr/lib/udev/rules.d/65-context.rules /usr/lib/udev/rules.d/65-context.rules
	install -D -m 540 ./src/usr/bin/onegate.rb /usr/bin/onegate.rb
	install -D -m 540 ./src/usr/bin/onegate /usr/bin/onegate
	install -D -m 540 ./src/usr/bin/onesysprep /usr/bin/onesysprep
	install -D -m 540 ./src/usr/bin/growpart /usr/bin/growpart
	install -D -m 540 ./src/usr/bin/one-contextd /usr/bin/one-contextd

# for i in $(find ./src/ -type f); do echo rm ${i#./src*}; done | sed 's/\#/\\\#/g'
uninstall:
	rm /etc/sv/one-contextd/run
	rm /etc/sv/one-contextd/log/run
	rm /etc/one-context.d/net-97-start-script
	rm /etc/one-context.d/loc-16-gen-env
	rm /etc/one-context.d/loc-20-set-username-password
	rm /etc/one-context.d/loc-14-mount-swap\#\#one
	rm /etc/one-context.d/loc-22-ssh_public_key
	rm /etc/one-context.d/loc-24-ssh_host_key\#\#deb
	rm /etc/one-context.d/loc-09-timezone
	rm /etc/one-context.d/loc-04-run-dir
	rm /etc/one-context.d/net-15-hostname
	rm /etc/one-context.d/loc-10-network-pci\#\#one
	rm /etc/one-context.d/loc-35-securetty
	rm /etc/one-context.d/loc-10-network.d/netcfg-iproute2
	rm /etc/one-context.d/loc-10-network.d/functions
	rm /etc/one-context.d/loc-10-network.d/netcfg-scripts
	rm /etc/one-context.d/loc-30-console\#\#one
	rm /etc/one-context.d/net-99-report-ready
	rm /etc/one-context.d/loc-05-grow-rootfs
	rm /etc/one-context.d/loc-10-network
	rm /etc/one-context.d/net-98-execute-scripts
	rm /usr/lib/udev/rules.d/65-context.rules
	rm /usr/bin/onegate.rb
	rm /usr/bin/onegate
	rm /usr/bin/onesysprep
	rm /usr/bin/growpart
	rm /usr/bin/one-contextd

