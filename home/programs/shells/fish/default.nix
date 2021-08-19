{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set -g fish_greeting ""
      fish_vi_key_bindings
      set EDITOR vim
      abbr v "$EDITOR"
      abbr e "$EDITOR"
    '';
  };

  imports = [
    ./functions.nix
    ./shell-aliases.nix
    ./shell-abbrs.nix
  ];
}