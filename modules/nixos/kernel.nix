{ config, pkgs, ... }:

{

  boot.kernelPackages = pkgs.linuxPackages_xanmod;
  boot.kernelParams = [
    "nowatchdog"
    "quiet"
  ];
}
