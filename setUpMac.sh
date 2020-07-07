#Pre-req: need connection to internet
#install home brew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else

    brew update
fi

#installs openJDK 11, git etc ....
brew install java
brew install git
brew cask install atom
brew cask install google-chrome
brew install ansible
#install aws cli
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
#as sudo  this requires a password.
sudo installer -pkg ./AWSCLIV2.pkg -target /
