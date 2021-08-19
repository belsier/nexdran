{ config, pkgs, ...}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  # Enable nix flakes
  nix = {
    package = pkgs.nixUnstable;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  environment.systemPackages = with pkgs; [
    st
    vim
    wget
  ];
}
