### 요구사항
1. homebrew
2. nodejs
3. watchman
4. react Native cli
5. Xcode
6. cocoapods
7. jdk
8. android studio
- sdk 설치(sdk manager)
  - android 9.0(Pie)
    - android sdk platform 29
    - intel x86 atom system image
    - google apis intel x86 atom system image
    - google apis intel x86 atom_64 system image


### 환경변수 설정
```
vi ~/.zshrc
또는 vi ~/.bash_profile
```
```
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```
```
source ~/.zshrc
또는 source ~/.bash_profile

adb로 확인
```

### 프로젝트 생성 및 실행
```
npx react-native init nativeApp

npm run ios // ios로 실행
npm run android // android로 
```
