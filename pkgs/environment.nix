
{ config, pkgs, lib, ... }:

{
    environment.systemPackages =with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    zsh
    ntfs3g
    wget
    git
    neofetch

    nodejs
    go
    nodePackages.pnpm
    docker-compose
    gcc

    emacs28Packages.company-anaconda

    # support both 32- and 64-bit applications
    wineWowPackages.stable

    # support 32-bit only
    wine

    # support 64-bit only
    (wine.override { wineBuild = "wine64"; })

    # wine-staging (version with experimental features)
    wineWowPackages.staging

    # winetricks (all versions)
    winetricks

    # native wayland support (unstable)
    # wineWowPackages.waylandFull

    android-tools

    lolcat

    nur.repos.shadowrz.klassy # kde主题
  ];
}