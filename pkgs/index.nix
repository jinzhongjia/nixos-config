{ config, lib, pkgs, nixpkgs, ... }:

{
    imports =
    [
        ./develop/virtualisation.nix
        ./develop/wine.nix
        # ./game/steam.nix
        ./environment.nix
    ];
}