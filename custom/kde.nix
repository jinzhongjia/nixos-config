{ config, pkgs, lib, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;

  # The setting of plasma5
  services.xserver.desktopManager.plasma5 = {
    enable = true;
    # Use systemd to manage the Plasma session
    runUsingSystemd = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "cn";
    xkbVariant = "";
  };
  environment.systemPackages = with pkgs; [
    libsForQt5.ark # kde配套解压工具
    unar
    lrzip
    lzop
    p7zip
    unrar

    kate

    gwenview

    libsForQt5.kdeconnect-kde
  ];
}
