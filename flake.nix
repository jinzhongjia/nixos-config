{
  description = "nixos config for Jinzhongjia!";

  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./meta.nix
          ./bootloader.nix
          ./kernel.nix
          ./nvidia.nix
          ./part.nix
          ./fonts.nix
          ./network.nix
          ./i18n.nix
          ./time.nix
          ./sound.nix
          ./autoUpgrade.nix
          ./gc.nix
          ./users.nix
          ./proxy.nix
          ./gnome.nix
          ./game.nix
          ./podman.nix
          ./hardware-configuration.nix
          
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.jin = import ./home/jin.nix;
            home-manager.extraSpecialArgs = inputs;
          }
        ];
      };
    };
  };
}
