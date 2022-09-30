{ config, pkgs, ... }:

{
  users.users.jin = {
    isNormalUser = true;
    description = "金中甲";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      firefox
      thunderbird

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

      smartgithg

      drawio # 好用免费的绘图工具

      tdesktop
      discord

      vlc # vedio player
      deadbeef # audio player
      cava
      termusic # 音乐专用的终端ui
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

      github-desktop
      gh # github-cli

      obs-studio

      qbittorrent

      bless # 十六进制编辑器
      ghidra # 逆向工具

      # neovim
      neovim
      ripgrep
      fd
      tree-sitter
      xclip

      # language server
      gopls # go
      golangci-lint
      golangci-lint-langserver
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
      codespell # Fix common misspellings in source code

      # debug
      delve
      # python310Packages.debugpy

      nur.repos.linyinfeng.icalingua-plus-plus # incalingua++

      nur.repos.linyinfeng.wemeet # 腾讯会议

      nur.repos.xddxdd.dingtalk # 钉钉

    ];
  };

  programs.zsh.enable = true;
}
