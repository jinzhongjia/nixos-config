{ inputs
, outputs
, lib
, config
, pkgs
, ...
}:

{

  imports = builtins.attrValues outputs.homeManagerModules;

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

    ntfs3g
    vesktop
    telegram-desktop
    qq
    yesplaymusic
    go-musicfox
    nur.repos.xddxdd.qqmusic
    pods

    nixpkgs-fmt
    nil
  ];

  # git
  programs.git = {
    enable = true;
    userName = "jinzhongjia";
    userEmail = "mail@nvimer.org";
  };

  # wezterm
  programs.wezterm = {
    enable = true;
    colorSchemes = {
      github_dark = builtins.fromTOML (builtins.readFile ./wezterm/theme.toml);
    };
    extraConfig = builtins.readFile ./wezterm/config.lua;
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

  programs.obs-studio = {
    enable = true;
  };

  programs.firefox = {
    enable = true;
  };

  home.sessionVariables = {
    IsNixOS = 1;
    DIRENV_LOG_FORMAT = "";
  };
}
