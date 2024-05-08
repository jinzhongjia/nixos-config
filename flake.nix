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

    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11";

    nur.url = github:nix-community/NUR;

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nur, home-manager, ... } @ inputs:
let
    inherit (self) outputs;
    systems = [
      # "aarch64-linux"
      # "i686-linux"
      # "aarch64-darwin"
      # "x86_64-darwin"
      "x86_64-linux"
    ];
    # This is a function that generates an attribute by calling a function you
    # pass to it, with each system as an argument
    forAllSystems = nixpkgs.lib.genAttrs systems;
  in

 {

    packages = forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});

    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);

    overlays = import ./overlays {inherit inputs;};

    nixosModules = import ./modules/nixos;

    homeManagerModules = import ./modules/home-manager;

     nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs;};
        modules = [
          ./nixos/config.nix
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
          {nixpkgs.overlays = [nur.overlay];}
          nur.nixosModules.nur
        ];
      };
    };

    homeConfigurations = {
      # FIXME replace with your username@hostname
      "jin@nixos" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {inherit inputs outputs;};
        modules = [
          # > Our main home-manager configuration file <
          ./home-manager/home.nix
          {nixpkgs.overlays = [nur.overlay];}
          nur.hmModules.nur
        ];
      };
    };
  };
}
