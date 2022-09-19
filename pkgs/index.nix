{ config, pkgs, lib, modulesPath, inputs, nixpkgs, ... }:

{
    imports =
    [
        ./develop/git.nix
        ./develop/virtualisation.nix
        ./develop/wine.nix
        ./game/steam.nix
        ./game/gamemode.nix
        ./environment.nix
    ];
}