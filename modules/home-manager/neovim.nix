{ inputs
, outputs
, lib
, config
, pkgs
, ...
}: {

  programs.neovim = {
    enable = true;
    package = pkgs.neovim-nightly;
    plugins = [
      # pkgs.vimPlugins.nvim-treesitter.withAllGrammars
    ];
  };
}
