{ config, pkgs, ... }:

{
  users.users.jin = {
    isNormalUser = true;
    description = "jin";
    extraGroups = [ "networkmanager" "wheel" "gamemode" ];
    createHome = true;
  };
}
