{ config, pkgs, lib, ... }:

{
    users.users.jin = {
      isNormalUser = true;
      # description = "jin";
      extraGroups = [ "networkmanager" "wheel" ];
      shell = pkgs.zsh;
      packages = with pkgs; [
        firefox
        kate
        google-chrome
        chromium

        vscode

        postman

        dbeaver # 通用数据库可视化工具

        jetbrains.goland
        jetbrains.clion
        cmake
        jetbrains.pycharm-professional
        conda

        qtcreator

        tdesktop
        discord 
      

        vlc # vedio player
        deadbeef # audio player
#       cava
#       termusic 音乐专用的终端ui
        calibre # Comprehensive e-book software
        gwenview
        gimp

        libsForQt5.ark # kde配套解压工具
        libsForQt5.kdenlive # 视频剪辑工具

     
        # nur.repos.xddxdd.dingtalk # 钉钉
        libreoffice-qt # kde专用
        wpsoffice-cn # wpsoffice cn

        vnote

        libsForQt5.kdeconnect-kde

        (steam.override { withJava = true; })
        protontricks # proton工具
        lutris # 游戏整合平台

        qjournalctl # GUI界面检索及查看系统日志
        remmina # 远程工具

        nur.repos.xddxdd.qbittorrent-enhanced-edition

        nur.repos.linyinfeng.icalingua-plus-plus # incalingua++

        nur.repos.linyinfeng.wemeet # 腾讯会议

        nur.repos.xddxdd.dingtalk
      ];
    };
}