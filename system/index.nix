{ config, lib, pkgs, ... }:

{
  imports = [
    ./alias.nix
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./boot.nix
    ./font.nix
    ./i18n.nix
    ./network.nix
    ./time.nix
    ./upgrade.nix
  ];
  system.stateVersion = "22.11";
}
