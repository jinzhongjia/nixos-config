{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    ntfs3g # 微软NTFS文件系统支持
    wget
    neofetch

    docker-compose
    nodejs
    nodePackages.pnpm
    nodePackages.typescript
    go
    gotools
    # clang
    # clang-tools
    # cmake
    lua
    python310
    android-tools
    ctags

    tmux
    lolcat
    lazydocker
    lazygit
    glow
    htop
    bat
  ];
}
