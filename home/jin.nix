{ config, pkgs, ... }:

{
  home = {
    username = "jin";
    homeDirectory = "/home/jin";
    stateVersion = "23.11";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # packages for jin user
  home.packages = with pkgs;[
    # enable wayland support
    wineWowPackages.waylandFull
    winetricks

    google-chrome
    firefox
    vlc
    ntfs3g
    vesktop
    telegram-desktop
    qq
    yesplaymusic
    go-musicfox
  ];

  # git
  programs.git = {
    enable = true;
    userName = "jinzhongjia";
    userEmail = "mail@nvimer.org";
  };

  # starship
  programs.starship.enable = true;

  # wezterm
  programs.wezterm = {
    enable = true;
    colorSchemes = {
      github_dark = builtins.fromTOML (builtins.readFile ./wezterm/theme.toml);
    };
    extraConfig = builtins.readFile ./wezterm/config.lua;
  };

  # bash
  programs.bash = {
    enable = true;
    enableCompletion = true;
    enableVteIntegration = true;
  };

  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhs;
  };

  programs.z-lua = {
    enable = true;
  };

  programs.hyfetch = {
    enable = true;
  };

  programs.thunderbird = {
    enable = true;
    profiles = { };
  };

  programs.obs-studio = {
    enable = true;
  };

  programs.btop = {
    enable = true;
  };

  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.ripgrep = {
    enable = true;
  };

  programs.lazygit = {
    enable = true;
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };
}
