{config, pkgs, ...}:

{
  imports = [
    ./fish
    ./zsh.nix
    ./starship.nix
    ./powerline-go.nix
  ];  
}