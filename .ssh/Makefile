default: all

all: authorized_keys

authorized_keys: authorized_keys.new
	mv authorized_keys.new authorized_keys

authorized_keys.new:
	curl -s -o authorized_keys.new https://github.com/kitchen.keys

