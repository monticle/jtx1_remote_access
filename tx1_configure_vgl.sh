# Built VirtualGL, TurboVNC and libjpeg-turbo for 64-bit Linux For Tegra R24.1.
#
# Based on https://devtalk.nvidia.com/default/topic/828974/jetson-tk1/-howto-install-virtualgl-and-turbovnc-to-jetson-tk1/2
#

# copied from https://github.com/nicksp/dotfiles/blob/master/setup.sh
answer_is_yes() {
  [[ "$REPLY" =~ ^[Yy]$ ]] \
    && return 0 \
    || return 1
}

print_question() {
  # Print output in yellow
  printf "\e[0;33m  [?] $1\e[0m"
}

# copied from https://github.com/nicksp/dotfiles/blob/master/setup.sh
ask_for_confirmation() {
  print_question "$1 (y/n) "
  read -n 1
  printf "\n"
}

# Configure VirtualGL
# See https://cdn.rawgit.com/VirtualGL/virtualgl/2.5/doc/index.html#hd006
echo -e "Configuring VirtualGL..." 
sudo /opt/VirtualGL/bin/vglserver_config
sudo usermod -a -G vglusers ubuntu
echo -e "\n" 

