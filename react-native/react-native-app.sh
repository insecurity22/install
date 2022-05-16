echo "Create react native app"
echo "native app "
read name
npx react-native init ${name}

cd ./${name}

echo "Start (ios|android)"
read start
if [ ${start} == 'ios' ]
then
  npm run ios
  # or react-native run-ios
elif [ ${start} == 'android' ]
  npm run android 
  # or react-native run-android
else exit 0
fi
