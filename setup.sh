wget http://dl.google.com/android/android-sdk_r24.0.2-linux.tgz
tar zxvf android-sdk_r24.0.2-linux.tgz
sudo mv android-sdk-linux/ /opt/
rm android-sdk_r24.0.2-linux.tgz

echo 'export ANDROID_HOME=/opt/android-sdk-linux' >> ~/.zshrc
echo 'export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.zshrc

android list sdk --all
android update sdk --no-ui --filter 1,2,5,36,37,38,39,42,165,166,167,169,171,172,173,174,175
