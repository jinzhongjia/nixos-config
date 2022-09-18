{ config, pkgs, lib, ... }:

let
  nvidia-offload = pkgs.writeShellScriptBin "nvidia-offload" ''
    export __NV_PRIME_RENDER_OFFLOAD=1
    export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
    export __GLX_VENDOR_LIBRARY_NAME=nvidia
    export __VK_LAYER_NV_optimus=NVIDIA_only
    exec "$@"
  '';
in
{

    # 配置environment.systemPackages
    environment.systemPackages = with pkgs; [
      nvidia-offload #微软NTFS文件系统支持
    ];

    # Nvidia configp
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.opengl.enable = true;
    #
    #   # Optionally, you may need to select the appropriate driver version for your specific GPU.
    hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;

    hardware.nvidia.prime = {
        offload.enable = true;

        # Bus ID of the Intel GPU. You can find it using lspci, either under 3D or VGA
        intelBusId = "PCI:0:2:0";

        # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
        nvidiaBusId = "PCI:1:0:0";
    };

}