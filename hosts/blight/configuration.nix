{ config, pkgs, ... }:
let
  user = "sigint";
in
{
  imports =
    [
      # ../../hardware-configuration.nix # for vm installation
      # /etc/nixos/hardware-configuration.nix # for post-installation
      ./packages.nix
      ../common.nix
    ];

  i18n = {
    consoleKeyMap = "colemak";
    defaultLocale = "en_US.UTF-8";
  };

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";

  # boot.kernel.sysctl = { "net.ipv4.ip_forward" = 1; };

  networking.hostName = "WLtz7NF1pN";

  services.openssh.enable = true;
  services.xserver.enable = false;

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_11;
  };

  users.users.${user} = {
    isNormalUser = true;
    home = "/home/${user}";
    extraGroups = [ "wheel" ];
  };

  ## SSH keys
  users.extraUsers.${user}.openssh.authorizedKeys.keys = [ "" ];

  system.stateVersion = "21.05";

}
