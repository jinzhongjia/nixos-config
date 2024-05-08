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

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";


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

# for gnome
    mpv
    celluloid
    wike
    geopard
    fractal
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