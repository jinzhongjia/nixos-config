{ config, pkgs, ... }:

{
    users.users.jin = {
      isNormalUser = true;
      description = "金中甲";
      extraGroups = [ "networkmanager" "wheel" ];
#       shell = pkgs.zsh;
      packages = with pkgs; [
        firefox
        
        google-chrome
        chromium

        kate
        vscode

        postman

        dbeaver # 通用数据库可视化工具

        jetbrains.goland
        jetbrains.clion
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

        libreoffice-qt # kde专用
        wpsoffice-cn # wpsoffice cn

        vnote

        libsForQt5.kdeconnect-kde

        protontricks # proton工具
        lutris # 游戏整合平台

        qjournalctl # GUI界面检索及查看系统日志
        remmina # 远程工具

        obs-studio

        qbittorrent

        nur.repos.linyinfeng.icalingua-plus-plus # incalingua++

        nur.repos.linyinfeng.wemeet # 腾讯会议

      ];
    };
}
