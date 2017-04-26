wget http://dl.google.com/android/android-sdk_r24.0.2-linux.tgz
tar zxvf android-sdk_r24.0.2-linux.tgz
sudo mv android-sdk-linux/ /opt/
rm android-sdk_r24.0.2-linux.tgz

echo 'export ANDROID_HOME=/opt/android-sdk-linux' >> ~/.zshrc
echo 'export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.zshrc

android update sdk --no-ui
android list sdk --all
