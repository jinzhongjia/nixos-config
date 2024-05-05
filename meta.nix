{ config, pkgs, ... }:

{
    system.stateVersion = "23.11";
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    nix.settings.experimental-features = ["nix-command" "flakes"];
}
