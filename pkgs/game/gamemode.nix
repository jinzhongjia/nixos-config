{ pkgs, lib, nixpkgs, ... }:

{
    programs.gamemode.enable = true;

    environment.variables = {
        GAMEMODERUNEXEC = "nvidia-offload";
    };
}