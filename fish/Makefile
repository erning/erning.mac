
default: clean install

clean:
	rm -f "$(HOME)/.config/fish/config.fish"

install:
	@PWD=`pwd`
	ln -s "$(PWD)/config.fish" "$(HOME)/.config/fish/config.fish"

.PHONY: clean install
