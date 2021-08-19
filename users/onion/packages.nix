{ pkgs, ... }:

with pkgs; [

  # DESKTOP
  pkgs.maim
  pkgs.xssproxy
  pkgs.betterlockscreen

  # DEV

  pkgs.sqlite
  pkgs.gnupg
  pkgs.openssh
  pkgs.nodejs-14_x


  # TERMINAL

  pkgs.cava
  pkgs.calc
  pkgs.cmatrix
  pkgs.entr
  pkgs.killall
  pkgs.neofetch
  pkgs.ranger


  # FILES

  pkgs.unrar
  pkgs.zip
  pkgs.unzip
  pkgs.xclip


  # MULTIMEDIA

  pkgs.youtube-dl
]
