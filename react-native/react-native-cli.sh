echo "\n\nInstall homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew --version

echo "\n\nInstall Nodejs"
brew install node
node -–version
npm --version

echo "\n\nInstall watchman"
xcode-select --install
brew install watchman
watchman --version

echo "\n\nInstall react-native-cli"
npm install -g npm@8.9.0
npm install -g react-native-cli
npx react-native --version

echo "\n\nAfter installing Xcode from Appstore, enter (y|Y)."
read answer
if [ $answer -eq 'y' ] || [ $answer -eq 'Y' ];
  then
    :
  else exit 0
fi

echo "\n\nInstall Cocoapods"
sudo gem install cocoapods
pod --version

echo "\n\nInstall jdk"
brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk8
java -version

echo "\n\nAfter installing Android studio, enter (y|Y)."
echo "https://developer.android.com/studio"
read answer
if [ $answer -eq 'y' ] || [ $answer -eq 'Y' ]; 
  then
    :
  else exit 0
fi

echo "\n\nEnter (zshrc|bash_profile) to add environment variable."
echo "Enter (n|N) to skip.\n"
echo "Your current shell is $SHELL"
read shell
if [ $shell -eq 'zshrc' ];
then
  echo "export ANDROID_HOME=$HOME/Library/Android/sdk" >> ~/.zshrc
  echo "export PATH=\$PATH:\$ANDROID_HOME/emulator" >> ~/.zshrc
  echo "export PATH=\$PATH:\$ANDROID_HOME/tools" >> ~/.zshrc
  echo "export PATH=\$PATH:\$ANDROID_HOME/tools/bin" >> ~/.zshrc
  echo "export PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> ~/.zshrc
elif [ $shell -eq 'bash_profile' ];
then
  echo "export ANDROID_HOME=\$HOME/Library/Android/sdk" >> ~/.bash_profile
  echo "export PATH=\$PATH:\$ANDROID_HOME/emulator" >> ~/.bash_profile
  echo "export PATH=\$PATH:\$ANDROID_HOME/tools" >> ~/.bash_profile
  echo "export PATH=\$PATH:\$ANDROID_HOME/tools/bin" >> ~/.bash_profile
  echo "export PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> ~/.bash_profile
elif [ $shell -eq 'n' ] || [ $shell -eq 'N' ];
then
  :
else exit 0
fi

echo "\n\nPlease enter adb after enter "
echo "source ~/.zshrc"
echo "OR"
echo "source ~/.bash_profile"

# source ~/.zshrc
# source ~/.bash_profile
# adb
