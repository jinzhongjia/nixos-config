{ config, pkgs, lib, modulesPath, inputs, nixpkgs, ... }:

{
  imports = [
    ./custom/index.nix
    ./pkgs/index.nix
    ./system/index.nix
    ./user/index.nix
    ./hardware-configuration.nix
    ./nixconfig.nix
  ];

}
