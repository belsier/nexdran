{ lib, pkgs, user, name, ... }:

{
  users.users.${user} = {
    isNormalUser = true;
    home = "/home/${user}";
    extraGroups = [ "wheel" "audio" "networkmanager" "vboxusers" "vboxsf" ];
  };

  ## SSH keys
  users.extraUsers.${user} = {
    openssh = {
      authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFCi9sRgZpd3H1ZI3x053OJkY+6f+IzZi3WE78tNzWNN belsier@nexdran.dev" ];
    };
    shell = pkgs.zsh;
  };
}