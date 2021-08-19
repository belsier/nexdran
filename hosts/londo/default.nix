args@{ config, lib, pkgs, ... }:

let
in
{
  imports =
    [
       ../../users/onion
      ./hardware-configuration.nix
      ./desktop.nix
      ./fonts.nix
      ./system-packages.nix
      ../../system/common.nix
      ../../system/programs/gnupg.nix
      ../../system/services/mongodb.nix
      ../../system/services/redshift.nix
    ];

  console.keyMap = "colemak";

  i18n = {
    defaultLocale = "en_US.UTF-8";
  };

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";



  # disable OS prober
  boot.loader.grub.useOSProber = false;

  boot.kernelModules = [ "kvm-amd" ];


  # virtualization disabled
  virtualisation.libvirtd.enable = false;
  virtualisation.virtualbox.host.enable = false;
  virtualisation.virtualbox.host.enableExtensionPack = false;

  networking.hostName = "Y4iGUCQm9W";
  networking.networkmanager.enable = true;
  networking.firewall.allowedTCPPorts = [ 22 3000 27017];

  services.openssh.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32Bit = true;
  hardware.opengl.driSupport32Bit = true;

  programs.zsh.enable = true;

  services.greenclip.enable = false;
  system.stateVersion = "21.05";
}
