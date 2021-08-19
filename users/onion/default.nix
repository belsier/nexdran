args@{ config, pkgs, lib, ... }:
let
  user = "onion";
  name = "Onion";
in
{
  imports = [
    (import ../shared.nix (args // { user = user; name = name; }))
  ];
  home-manager = {
    users.${user} = {
      home.stateVersion = "21.03";
      home.username = user;
      home.homeDirectory = "/home/${user}";

      home.packages = import ./packages.nix (args // { pkgs = pkgs; });

      imports = [
        # ./gui.nix
        # ../../home/programs/firefox
        # ../../home/programs/vscode
        ../../home/programs/shells
        ../../home/programs/alacritty.nix
        ../../home/programs/fzf.nix
        ../../home/programs/git.nix
        # ../../home/programs/password-store.nix
        ../../home/programs/tmux.nix
        ../../home/programs/vim.nix
        ../../home/programs/zathura.nix
        # ../../home/services/network-manager.nix
        # ../../home/services/screen-locker.nix
      ];
    };
  };

  # programs.home-manager.enable = true;
}
