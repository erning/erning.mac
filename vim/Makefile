
	
default: clean install

clean:
	rm -f $(HOME)/.vimrc
	rm -rf $(HOME)/.vim

install:
	@PWD=`pwd`
	ln -s $(PWD) $(HOME)/.vim

.PHONY: clean install

