{ config, pkgs, ...}:

{
  services.xserver = {
    enable = true;
    displayManager = {
      defaultSession = "lxqt";
      lightdm.enable = true;
    };
    windowManager = {
    };
    desktopManager = {
      lxqt.enable = true;
      gnome.enable = false;
      plasma5.enable = false;
    };

    layout = "us";
    xkbVariant = "colemak";
    xkbOptions = "caps:swapescape";
  };
}
