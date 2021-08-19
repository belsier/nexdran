{ config, pkgs, ... }:

let
  lockCmd = "${pkgs.betterlockscreen}/bin/betterlockscreen -l dim";
in
{
  services.screen-locker = {
    enable = true;

    # Lock after 15 minutes
    inactiveInterval = 15;

    # Lock command
    lockCmd = lockCmd;
  };
}