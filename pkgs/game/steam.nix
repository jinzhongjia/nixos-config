{ pkgs, lib, nixpkgs, ... }:

{
    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "steam"
        "steam-original"
        "steam-runtime"
    ];

    # Adding missing dependencies
    nixpkgs.config.packageOverrides =nixpkgs.config.packageOverrides // (pkgs: {
        steam = pkgs.steam.override {
            extraPkgs = pkgs: with pkgs; [
                libgdiplus
            ];
        };
    });
}