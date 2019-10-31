#! /bin/bash
cd ~/Desktop
mkdir testShell && cd testShell
wget https://github.com/ipfs/go-ipfs/releases/download/v0.4.18/go-ipfs_v0.4.18_darwin-amd64.tar.gz
tar -xvf go-ipfs_v0.4.18_darwin-386.tar.gz
cd go-ipfs
sudo ./install.sh
ipfs init
ipfs daemon --enable-pubsub-experiment &
redis-server &
sudo npm i -g nativefier
cd ~/Desktop/testShell
git clone https://github.com/codeforgeek/decentralized-email/
cd decentralized-email
git checkout desktop_app
echo '{"user":"/orbitdb/zdpuB1PSw9b6qauSafECdN4cfWZbm6RbLxAxaiUeKZ4jU8K2r/email.user","contacts":"/orbitdb/zdpuAkzsuje18Aq2pPmz8SUmJAwg8mGffJ9yCkwdZY1p4LSBw/email.user.contacts","emails":"/orbitdb/zdpuArFTzoY2yTY3yjU9or5XroUyqimHnRVfvk4jYoxDdFXkk/email.user.data"}' > dbaddress.js
npm install -S 
node index.js &
cd ~/Desktop/testShell
nativefier --name "emailDesktopApp" http://localhost:3000
cd ~/Desktop/testShell/emailDesktopApp-darwin-x64
open -a emailDesktopApp.app
