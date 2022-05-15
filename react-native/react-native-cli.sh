echo -e "Install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew --version

echo -e "Install Nodejs"
brew install node
node -–version
npm --version

echo -e "Install watchman"
xcode-select --install
brew install watchman
watchman --version

echo -e "Install react-native-cli"
npm install -g npm@8.9.0
npm install -g react-native-cli
npx react-native --version

echo -e "After installing Xcode from Appstore, enter (y|Y)."
read answer
if [ ${answer} == 'y' ] || [ ${answer} == 'Y' ] 
  then
  else exit 0
fi

echo -e "Install Cocoapods"
sudo gem install cocoapods
pod --version

echo -e "Install jdk"
brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk8
java -version

echo -e "After installing Android studio, enter (y|Y)."
echo -e "https://developer.android.com/studio"
read answer
if [ ${answer} == 'y' ] || [ ${answer} == 'Y' ] 
  then
  else exit 0
fi

read shell
echo -e "Enter (zshrc|bash_profile) to add environment variable."
echo -e "Enter (n|N) to skip."
if [ ${shell} == 'zshrc' ]
then
  echo "export ANDROID_HOME=$HOME/Library/Android/sdk" >> ~/.zshrc
  echo "export PATH=$PATH:$ANDROID_HOME/emulator" >> ~/.zshrc
  echo "export PATH=$PATH:$ANDROID_HOME/tools" >> ~/.zshrc
  echo "export PATH=$PATH:$ANDROID_HOME/tools/bin" >> ~/.zshrc
  echo "export PATH=$PATH:$ANDROID_HOME/platform-tools" >> ~/.zshrc
  source ~/.zshrc
elif [ ${shell} == 'bash_profile' ]
  echo "export ANDROID_HOME=$HOME/Library/Android/sdk" >> ~/.bash_profile
  echo "export PATH=$PATH:$ANDROID_HOME/emulator" >> ~/.bash_profile
  echo "export PATH=$PATH:$ANDROID_HOME/tools" >> ~/.bash_profile
  echo "export PATH=$PATH:$ANDROID_HOME/tools/bin" >> ~/.bash_profile
  echo "export PATH=$PATH:$ANDROID_HOME/platform-tools" >> ~/.bash_profile
  source ~/.bash_profile
elif [ ${shell} == 'n' ] || [ ${shell} == 'N' ]
else exit 0
fi

adb
