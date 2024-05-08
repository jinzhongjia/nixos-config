{ inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}:

{

  imports = [
    # If you want to use modules your own flake exports (from modules/home-manager):
    # outputs.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

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
  ];

  # git
  programs.git = {
    enable = true;
    userName = "jinzhongjia";
    userEmail = "mail@nvimer.org";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    enableVteIntegration = true;
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
  
  programs.firefox = {
    enable = true;
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };
}
