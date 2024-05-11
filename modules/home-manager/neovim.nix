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
    extraWrapperArgs = [
      "--suffix"
      "PATH"
      ":"
      "${lib.makeBinPath [ pkgs.gcc ]}"
    ];
  };
}
