cd ~
#Backup your local configuration files, example:
mv .bash_profile .bash_profile.bk
#Clone your configuration repository
git clone git@github.com:jbarciauskas/config.git config.git
#Move the git metadata to ~/.config.git
mv config.git/.git .config.git
#Enable dotglob
shopt -s dotglob
#Move your configuration files to your home directory
cp -R -i config.git/* .
#Delete the config.git directory
rmdir config.git
