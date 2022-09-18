{
  description = "A very basic flake";

  inputs = {
    # Nixpkgs，即 NixOS 官方软件源
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # NUR 的源
    nur = {
      url = "github:nix-community/NUR";
      # inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nur, ... }@inputs: 

    let
      system = "x86_64-linux";
    in
    {
    nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [
        { nixpkgs.overlays = [ nur.overlay ]; }
        ./index.nix
        
      ];
      specialArgs = { inherit inputs; };
      
    };

  };
}
