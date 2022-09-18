
{ config, pkgs, lib, ... }:

{
    environment.systemPackages =with pkgs; [
    vim
    zsh
    ntfs3g #微软NTFS文件系统支持
    wget
    git
    neofetch

    nodejs
    go
    nodePackages.pnpm
    docker-compose
    gcc

    android-tools

    lolcat
  ];
}