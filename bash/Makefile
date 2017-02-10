
	
default: clean install

clean:
	rm -f $(HOME)/.bash_profile
	rm -rf $(HOME)/.bashrc

install:
	PWD=`pwd`
	ln -is $(PWD)/bash_profile $(HOME)/.bash_profile
	ln -is $(PWD)/bashrc $(HOME)/.bashrc

.PHONY: clean install

