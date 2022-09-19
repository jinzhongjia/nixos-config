
{ config, pkgs, lib, ... }:

{
    environment.systemPackages =with pkgs; [
    vim
    ntfs3g #微软NTFS文件系统支持
    wget
    neofetch

    docker-compose
    nodejs
    nodePackages.pnpm
    go


    android-tools

    lolcat
  ];
}