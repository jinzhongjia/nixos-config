{ config, pkgs, lib, ... }:

{
    nix = {
        package = pkgs.nixUnstable;

        settings = {
            # 开启flake
            experimental-features = [
                "nix-command"
                "flakes"
            ];
            auto-optimise-store = true;

            substituters = [
                "https://mirror.nju.edu.cn/nix-channels/store"
                "https://cache.nixos.org/" 
            ];
        };

        gc = {
            # 开启自动回收垃圾,generations
            automatic = true;
            options = "--delete-older-than 5d";
            dates = "weekly";
        };

        extraOptions = ''
            keep-outputs = true
            keep-derivations = true
        '';
    };

    nixpkgs.config = {
        # 允许非自由软件
        allowUnfree = true;
    };
}
