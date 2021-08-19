{ config, lib, pkgs, ... }:

with lib;

{
  config = {
    time.timeZone = "America/Sao_Paulo";
  };
}
