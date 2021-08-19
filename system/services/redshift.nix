{ config, ... }:
{

  location = {
    latitude = -34.90;
    longitude = -56.16;
  };

  services.redshift = {
    enable = true;
    temperature = {
      day = 5600;
      night = 1800;
    };
    brightness = {
      day = "1";
      night = "0.9";
    };
  };
}
