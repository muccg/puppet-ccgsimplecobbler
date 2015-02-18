#!/usr/bin/env python
# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4

import iterpipes
import subprocess

MANAGEMENT_SUBNET="10.0.0."
REPLICATION_SUBNET="10.0.1."
PUBLIC_SUBNET="10.0.2."

def run_log(*args, **kwargs):
    print args, kwargs
    return iterpipes.cmd(*args, **kwargs)

# In cobbler's dhcp.template allow dynamic IPs for those ILOM multi-homed macs
# that co-habitat on eth0 that sits on subnet 10.0.0
# ILOM IP's will dynamically assigned for now from 160 to 180

# ip ranges on each interface
#
# mac_ilom: not used
# mac_manage: 10.0.0.0/24
# mac_rep: 10.0.1.0/24
# mac_pub: 10.0.2.0/24

CONFIG = {}

CONFIG['Controller'] = {
    'nodes' : [
        {"index":0,  "mac_ilom":"", "mac_manage":"52:54:00:01:eb:ae", "mac_rep":"52:54:00:4f:98:7c", "mac_pub":"52:54:00:b7:6b:1b"},
    ],
    'ip_start': 220,
    'ilom_ip_start': 240,
    'name_pattern': "%s%d"
}

CONFIG['Ccgcloud'] = {
    'nodes' : [
        {"index":0,  "mac_ilom":"c8:1f:66:cc:ca:34", "mac_manage":"c8:1f:66:cc:ca:32", "mac_rep":"00:0a:f7:75:a6:10", "mac_pub":"00:0a:f7:75:a6:12"},
        {"index":1,  "mac_ilom":"c8:1f:66:cd:1e:d6", "mac_manage":"c8:1f:66:cd:1e:d4", "mac_rep":"00:0a:f7:75:bb:b0", "mac_pub":"00:0a:f7:75:bb:b2"},
    ],
    'ip_start': 80,
    'ilom_ip_start': 90,
    'name_pattern': "%s%d"
}

CONFIG['Swift'] = {
    'nodes' : [
        {"index":0,  "mac_ilom":"1c:c1:de:72:8f:f1", "mac_manage":"1c:c1:de:6e:d6:06", "mac_rep":"a0:b3:cc:1c:44:28", "mac_pub":"a0:b3:cc:1c:44:2c"},
        {"index":1,  "mac_ilom":"1c:c1:de:72:8f:c6", "mac_manage":"1c:c1:de:6e:56:08", "mac_rep":"44:1e:a1:17:68:70", "mac_pub":"44:1e:a1:17:68:74"},
        {"index":2,  "mac_ilom":"1c:c1:de:6e:d1:b1", "mac_manage":"1c:c1:de:6e:d1:b0", "mac_rep":"9c:8e:99:01:1e:60", "mac_pub":"9c:8e:99:01:1e:64"},
        {"index":3,  "mac_ilom":"1c:c1:de:72:6f:69", "mac_manage":"1c:c1:de:6e:e1:0c", "mac_rep":"9c:8e:99:fd:07:10", "mac_pub":"9c:8e:99:fd:07:14"},
        {"index":4,  "mac_ilom":"1c:c1:de:72:7f:7c", "mac_manage":"1c:c1:de:6e:c6:50", "mac_rep":"9c:8e:99:fd:00:b0", "mac_pub":"9c:8e:99:fd:00:b4"},
        {"index":5,  "mac_ilom":"1c:c1:de:72:9f:19", "mac_manage":"1c:c1:de:6e:b6:c4", "mac_rep":"44:1e:a1:17:68:68", "mac_pub":"44:1e:a1:17:68:6c"},
        {"index":7,  "mac_ilom":"1c:c1:de:72:6f:d1", "mac_manage":"1c:c1:de:6e:c6:26", "mac_rep":"9c:8e:99:fd:02:a8", "mac_pub":"9c:8e:99:fd:02:ac"},
    ],
    'ip_start': 130,
    'ilom_ip_start': 160,
    'name_pattern': "%sn%d"
}

CONFIG['Compute'] = {
    'nodes' : [
        {"index":0,  "mac_ilom":"5c:f9:dd:f6:b6:52", "mac_manage":"c8:1f:66:d6:73:a3", "mac_rep":"c8:1f:66:d6:73:a1", "mac_pub":"c8:1f:66:d6:73:9f"},
        {"index":1,  "mac_ilom":"5c:f9:dd:f6:b6:8a", "mac_manage":"c8:1f:66:d6:84:b8", "mac_rep":"c8:1f:66:d6:84:b6", "mac_pub":"c8:1f:66:d6:84:b4"},
        {"index":2,  "mac_ilom":"5c:f9:dd:f6:b6:4a", "mac_manage":"c8:1f:66:d6:7b:8e", "mac_rep":"c8:1f:66:d6:7b:8c", "mac_pub":"c8:1f:66:d6:7b:8a"},
    ],
    'ip_start': 180,
    'ilom_ip_start': 200,
    'name_pattern': "%s%d"
}

CONFIG['Ceph'] = {
    'nodes' : [
        {"index":6,  "mac_ilom":"98:4b:e1:72:2b:b2", "mac_manage":"98:4b:e1:73:50:9a", "mac_rep":"9c:8e:99:01:2e:10", "mac_pub":"9c:8e:99:01:2e:14"},
        {"index":8,  "mac_ilom":"1c:c1:de:72:8f:a4", "mac_manage":"1c:c1:de:6e:c6:6a", "mac_rep":"44:1e:a1:17:c9:78", "mac_pub":"44:1e:a1:17:c9:7c"},
        {"index":9,  "mac_ilom":"1c:c1:de:72:9f:a7", "mac_manage":"1c:c1:de:6e:b5:9a", "mac_rep":"00:9c:02:3c:05:d8", "mac_pub":"00:9c:02:3c:05:dc"},
        {"index":10, "mac_ilom":"1c:c1:de:72:9c:9e", "mac_manage":"1c:c1:de:6e:02:e2", "mac_rep":"9c:8e:99:01:8e:98", "mac_pub":"9c:8e:99:01:8e:9c"},
        {"index":11, "mac_ilom":"9c:8e:99:14:1e:35", "mac_manage":"78:e3:b5:1a:f9:a0", "mac_rep":"00:9c:02:3c:97:b8", "mac_pub":"00:9c:02:3c:97:bc"},
        {"index":12, "mac_ilom":"1c:c1:de:72:8f:8c", "mac_manage":"1c:c1:de:6e:c6:f2", "mac_rep":"00:9c:02:3c:97:c8", "mac_pub":"00:9c:02:3c:97:cc"},
        {"index":13, "mac_ilom":"1c:c1:de:72:8f:bf", "mac_manage":"1c:c1:de:6e:c6:b0", "mac_rep":"44:1e:a1:17:c9:18", "mac_pub":"44:1e:a1:17:c9:1c"},
    ],
    'ip_start': 10,
    'ilom_ip_start': 40,
    'name_pattern': "%s%d"
}

def remove_system(system_name):
    print("Removing system {}".format(system_name))
    remove = run_log("cobbler system remove --name={}".format(system_name))
    try:
        iterpipes.check_call(remove)
    except subprocess.CalledProcessError:
        print "Error removing system, presume doesn't exist."

def add_system(profile, system_name, interface, mac, dns_name, ip, tag):
    print("Adding system {}".format(system_name))
    add = run_log("cobbler system add --profile={} --name={} --interface={} --mac={} --dns-name={}.bpa.ccg --ip-address={} --dhcp-tag={}".format(profile, system_name, interface, mac, dns_name, ip, tag))
    iterpipes.check_call(add)

def edit_system(system_name, interface, mac, dns_name, ip, tag):
    edit = run_log("cobbler system edit --name={} --interface={} --mac={} --dns-name={}.bpa.ccg --ip-address={} --dhcp-tag={}".format(system_name, interface, mac, dns_name, ip, tag))
    iterpipes.check_call(edit)    

def cobbler_sync():
    print "** cobbler sync **"
    sync = iterpipes.cmd("cobbler sync")
    iterpipes.check_call(sync)    
    sync = iterpipes.cmd("service isc-dhcp-server restart")
    iterpipes.check_call(sync)    
    sync = iterpipes.cmd("cobbler sync")
    iterpipes.check_call(sync)    

def main():

    def set_system(config_type, config, system_name):
	mac = config["mac_manage"]
        ip = MANAGEMENT_SUBNET + str(config_type['ip_start'] + index)
        if mac != "":
            return (system_name, mac, ip, 'eth0', 'manage')

    def set_ilom(config_type, config, system_name):
        mac = config["mac_ilom"]
        ip = MANAGEMENT_SUBNET + str(config_type['ilom_ip_start'] + index)
        if mac != "":
            return ('ilom' + system_name, mac, ip, 'ilom', 'ilom')

    def set_replication(config_type, config, system_name):
        mac = config["mac_rep"]
        ip = REPLICATION_SUBNET + str(config_type['ip_start'] + index)
        if mac != "":
            return (system_name + '.rep', mac, ip, 'eth2', 'replication')


    def set_public(config_type, config, system_name):
        mac = config["mac_pub"]
        ip = PUBLIC_SUBNET + str(config_type['ip_start'] + index)
        if mac != "":
            return (system_name + '.pub', mac, ip, 'eth3', 'public')

    for profile in CONFIG:
        config_type = CONFIG[profile]
        for config in config_type['nodes']:
            index = config["index"] 
            system_name = config_type['name_pattern'] % (profile.lower(), index)
            to_apply = []
            to_apply.append(set_system(config_type, config, system_name))
            to_apply.append(set_replication(config_type, config, system_name))
            to_apply.append(set_public(config_type, config, system_name))
            to_apply.append(set_ilom(config_type, config, system_name))
            to_apply = [t for t in to_apply if t is not None]
            for idx, (dns_name, mac, ip, interface, tag) in enumerate(to_apply):
                print idx, dns_name, mac, ip, interface, tag
                if idx == 0:
                    remove_system(system_name)
                    add_system(profile, system_name, interface, mac, dns_name, ip, tag)
                else:
                    edit_system(system_name, interface, mac, dns_name, ip, tag)

if __name__ == "__main__":
    main()
    cobbler_sync()

