{
  description = "A very basic flake";

  inputs = {
    # Nixpkgs，即 NixOS 官方软件源
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # NUR 的源
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-cn = {
      url = "github:nixos-cn/flakes";
      # 强制 nixos-cn 和该 flake 使用相同版本的 nixpkgs
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nur ,nixos-cn , ... }@inputs: 

    let
      system = "x86_64-linux";
    in
    {
    nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [
        { nixpkgs.overlays = [ nur.overlay ]; }
        ({ ... }: {
            # 使用 nixos-cn flake 提供的包
            environment.systemPackages =
              [ nixos-cn.legacyPackages.${system}.netease-cloud-music ];
            # 使用 nixos-cn 的 binary cache
            nix.settings.substituters = [
              "https://nixos-cn.cachix.org"
            ];
            nix.settings.trusted-public-keys = [ "nixos-cn.cachix.org-1:L0jEaL6w7kwQOPlLoCR3ADx+E3Q8SEFEcB9Jaibl0Xg=" ];

            imports = [
              # 将nixos-cn flake提供的registry添加到全局registry列表中
              # 可在`nixos-rebuild switch`之后通过`nix registry list`查看
              nixos-cn.nixosModules.nixos-cn-registries

              # 引入nixos-cn flake提供的NixOS模块
              nixos-cn.nixosModules.nixos-cn
            ];
          })

        ./index.nix
        
      ];
      specialArgs = { inherit inputs; };
      
    };

  };
}
