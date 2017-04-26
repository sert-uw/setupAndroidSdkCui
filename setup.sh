wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u73-b02/jdk-8u73-linux-x64.rpm"
sudo yum -y install jdk-8u73-linux-x64.rpm
echo 'export JAVA_HOME=/usr/java/default' >> ~/.zshrc

wget https://dl.google.com/android/repository/tools_r25.2.3-linux.zip
unzip tools_r25.2.3-linux.zip
sudo mv tools/ /opt/android-sdk
rm tools_r25.2.3-linux.zip

echo 'export ANDROID_HOME=/opt/android-sdk' >> ~/.zshrc
echo 'export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.zshrc

echo 'copy your local $ANDROID_HOME/licenses files to the server'
echo 'after that, you can build by ./gradlew'
