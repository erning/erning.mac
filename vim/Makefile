
	
default: clean install

clean:
	rm -f $(HOME)/.vimrc
	rm -rf $(HOME)/.vim
	rm -rf $(HOME)/.SpaceVim.d

install:
	@PWD=`pwd`
	ln -s $(PWD) $(HOME)/.vim
	ln -s $(PWD)/SpaceVim.d $(HOME)/.SpaceVim.d

.PHONY: clean install

