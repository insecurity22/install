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

echo "\n\nPlease install android studio."
echo "https://developer.android.com/studio"
