{...}:

{

    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.efi.efiSysMountPoint = "/boot/efi";

    # for zfs pool
    boot.supportedFilesystems = [ "ext4" "btrfs" ];

    # Enable CUPS to print documents.
    services.printing.enable = true;
}