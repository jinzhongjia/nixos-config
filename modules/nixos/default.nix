# Add your reusable NixOS modules to this directory, on their own file (https://nixos.wiki/wiki/Module).
# These should be stuff you would like to share with others, not your personal configurations.
{
  meta = import ./meta.nix;
  bootloader = import ./bootloader.nix;
  kernel = import ./kernel.nix;
  bluetooth = import ./bluetooth.nix;
  network = import ./network.nix;
  time = import ./time.nix;
  fonts = import ./fonts.nix;
  i18n = import ./i18n.nix;
  sound = import ./sound.nix;
  games = import ./games.nix;
  podman = import ./podman.nix;
  gnome = import ./gnome.nix;
}
