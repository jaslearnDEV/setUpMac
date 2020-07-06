#Pre-req: need connection to internet
#install home brew
brewCheck="";
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
    brewCheck="yes"

if(brewCheck=="yes")
#installs openJDK 11, git
brew cask java
brew install git
brew cask install atom
brew cask install google-chrome
brew install ansible
#install aws cli
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
#as sudo  this requires a password.
sudo installer -pkg ./AWSCLIV2.pkg -target /

fi
