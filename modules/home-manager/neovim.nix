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
    defaultEditor = true;
    withNodeJs = true;
    withPython3 = true;
    extraPackages = with pkgs;[ wl-clipboard ];
    extraWrapperArgs = [
      "--suffix"
      "PATH"
      ":"
      "${lib.makeBinPath [ pkgs.gcc pkgs.python3 ]}"
    ];
  };
}
