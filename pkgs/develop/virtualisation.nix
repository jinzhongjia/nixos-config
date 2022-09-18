{ pkgs, ... }:

{

    # virtual box
    virtualisation.virtualbox = {
        # 开启virtual box支持
        host.enable = true;
        # VirtualBox Oracle Extensions
        host.enableExtensionPack = true;
        # Automatically set up a vboxnet0 host-only network interface. 
        host.addNetworkInterface= true;
    };
    # 这里放置应该在vbox用户组的成员
    users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];

    # docker
    virtualisation.docker.enable = true;
    # 放置应该放在docker组的成员
    users.extraGroups.docker.members = [ "user-with-access-to-virtualbox" ];
    # TODO 配置docker compose
}