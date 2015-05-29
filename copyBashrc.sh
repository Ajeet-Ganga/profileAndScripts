if [ "$(uname)" == "Darwin" ]; then
	echo 'taking backup of old .profile  as .profile.bak'
	cp ~/.profile ~/.profile.bak
	echo 'copying bshrc from profileandscripts to ~/.bashrc'
	cp ~/profileandscripts/bashrc ~/.profile
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
	echo 'taking backup of old .bashrc as .bashrc.bak'
	cp ~/.bashrc ~/.bashrc.bak
	echo 'copying bshrc from profileandscripts to ~/.bashrc'
	cp ~/profileandscripts/bashrc ~/.bashrc
fi


