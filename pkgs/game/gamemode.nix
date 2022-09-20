{ pkgs, lib, nixpkgs, ... }:

{
    programs.gamemode.enable = true;

    environment.variables = {
        GAMEMODERUNEXEC = "nvidia-offload";
        # 注意：这里如果你是i+n卡请保持上面这行，这是为了gamemode正确使用独显
    };
}