ONE_SCRIPT_DIR=/var/lib/one

all: install

install:
	install -D src/lib/udev/rules.d/65-context.rules\#\#void.one /etc/udev/rules.d/65-context.rules
	install -D src/usr/sbin/one-contextd /usr/local/sbin/one-contextd
	install -D src/etc/runit/one-contextd/run /etc/sv/one-contextd/run
	install -D src/etc/runit/one-contextd/log/run /etc/sv/one-contextd/log/run

uninstall:
	rm -fr /etc/udev/rules.d/65-context.rules /usr/local/sbin/one-contextd /etc/sv/one-contextd

