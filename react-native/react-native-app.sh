echo "Create react native app"
echo "Please Input your project name"
read name
npx react-native init ${name}

cd ./${name}

echo "Start (ios|android)"
read start
if [ ${start} -eq 'ios' ];
  then
    npm run ios
    # or react-native run-ios
  elif [ ${start} -eq 'android' ]; 
    npm run android 
    # or react-native run-android
fi
