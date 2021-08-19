{ config, pkgs, ... }:

let

  mySettings = import ./settings.nix;
  myUserChrome = import ./userChrome.nix;
  myUserContent = import ./userContent.nix;

in
{
  programs.firefox = {
    enable = true;

    extensions = with pkgs.nur.repos.rycee.firefox-addons; [
      cookie-autodelete
      darkreader
      multi-account-containers
      ublock-origin
      umatrix
    ];

    profiles = {
      home = {
        isDefault = true;
        settings = mySettings;
        userChrome = myUserChrome;
        userContent = myUserContent;
      };


      work = {
        id = 2;
        settings = mySettings;
        userChrome = myUserChrome;
        userContent = myUserContent;
      };
    };
  };
}