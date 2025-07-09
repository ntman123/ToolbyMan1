#!/bin/bash

echo "🚀 Đang cài đặt TANMANTOOL..."

pkg update -y && pkg upgrade -y
pkg install -y python git mpv cmatrix toilet figlet ruby
gem install lolcat

mkdir -p ~/.termux-audio
curl -Lo ~/.termux-audio/startup.mp3 https://www2.cs.uic.edu/~i101/SoundFiles/ImperialMarch60.wav

echo -e '\n# Auto start TANMANTOOL' >> ~/.bashrc
echo 'termux-media-player play ~/.termux-audio/startup.mp3 &' >> ~/.bashrc
echo 'figlet "TANMANTOOL" | lolcat' >> ~/.bashrc
echo 'cmatrix -C red -u 1 &' >> ~/.bashrc
echo 'sleep 2 && pkill cmatrix' >> ~/.bashrc

echo "✅ Đã cài xong! Mời bạn mở lại Termux để cảm nhận."
