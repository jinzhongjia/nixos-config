{ config, pkgs, ... }:

{
  networking.hostName = "nixos"; # Define your hostname.
  # Enable networking
  networking.networkmanager.enable = true;

  # proxy
  boot.kernelModules = [ "tproxy" ];
  services.v2raya.enable = true;
}
