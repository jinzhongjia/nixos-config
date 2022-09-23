{ config, pkgs, ... }:

{
  users.users.jin = {
    isNormalUser = true;
    description = "金中甲";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      firefox

      google-chrome
      chromium

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

      gimp # 图片编辑工具

      shotcut # 视频剪辑工具

      libreoffice-qt # kde专用
      wpsoffice-cn # wpsoffice cn

      vnote

      protontricks # proton工具
      lutris # 游戏整合平台

      qjournalctl # GUI界面检索及查看系统日志
      remmina # 远程工具

      obs-studio

      qbittorrent

      bless # 十六进制编辑器
      ghidra # 逆向工具

      # neovim
      neovim
      ripgrep
      fd

      # language server
      gopls # go
      nodePackages.vls # vue
      sumneko-lua-language-server # lua
      ccls # c/c++
      nodePackages.pyright # python
      cmake-language-server # cmake
      nodePackages.bash-language-server # bash
      nodePackages.dockerfile-language-server-nodejs # dockerfile
      nodePackages.yaml-language-server # yaml
      nodePackages.vscode-json-languageserver # json
      rnix-lsp # nix

      # formatter
      nodePackages.prettier
      shfmt # shell
      stylua # lua
      gofumpt # go
      python39Packages.autopep8 # python
      cmake-format
      astyle # cpp
      buf # proto
      nixfmt # nix

      nur.repos.linyinfeng.icalingua-plus-plus # incalingua++

      nur.repos.linyinfeng.wemeet # 腾讯会议

    ];
  };

  programs.zsh.enable = true;
}
