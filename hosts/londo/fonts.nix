{ config, pkgs, ...}:

{
  fonts = {
    enableDefaultFonts = true;
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    fontconfig.enable = true;
    fonts = with pkgs; [
      noto-fonts
      powerline-fonts
      (nerdfonts.override {
        fonts = [
          "FiraCode"
          "Meslo"
          "Iosevka"
          "Inconsolata"
        ];
      })
    ];
  };
}
