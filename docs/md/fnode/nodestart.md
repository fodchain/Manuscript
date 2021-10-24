### Node start

**1 .We need to create a new directory,Put the galaxy_deploy.tar.gz file inside**

```shell
mkdir galaxy_package/
mv  galaxy_deploy.tar.gz galaxy_package/
```

**2.Put the `shuttle.jar` and `createKey.jar` tools in the root directory, they will be used later**

**3. Start to configure the `param.ini` file **

```ini
# Configure the path where galaxy_deploy.tar.gz is stored
galaxy_package=
# param.ini file path
galaxy_dir=
# Number of nodes, you can view it on your browser. We will remove this configuration later
node_num=
# Write the public key address of the genesis node here
# You can find it here: https://forestscan.io/en/account/detail?account=galaxy
pubkey_1=
# Write the address public key and private key of the wallet here
# Please replace the part of? With the current number of nodes
# producer3=
# pubkey_3=
# prikey_3=
# You can use createKey.jar to create it
producer ?=
pubkey_?=
prikey_?=
# Process function grouping, divide the process into different groups
# Under normal circumstances, you don’t need to change it
pid_group1=nodgal_trx:nodgal_ca:nodgal_shell:iceregistry

#Port mapping
is_remport=false

#Remote IP address
remote_ip=113.200.121.186
#Remote port
#Here you need to correspond to the address below
node1_report1=6100
node1_report2=6101

#Process group ip address
node1_group1=51.77.85.44
node2_group1=92.223.80.79

#ice External port
ice_port=5247

#External port shell
shell_port=8523

#Wallet port
wallet_port=8900

#block connected p2p port
block_port=9876

#trx connected p2p port
trx_port=9877

#Consensus connection port
consus_port=9878

#Monitor the connected port
monitor_port=9879

#galaxyConnection parameters
#galaxy_user=root
#galaxy_passwd=123456
#hostssh_dir=/var/lib/galaxy_ssh

#Stress test parameters
#Create account number
acounts=500

#Stress test number
press_num=1

#Pressure test port
press_test=8887

#Node pressure number
trx_num=20

#Node pressure number
account_dir=/root/galaxy_test/config

#Whether internal network, need to synchronize time
ls_syctime=false
```

**4.Run the configuration script: `./galaxy_pc_config.sh` **

```shell
./galaxy_pc_config.sh
```

**5. Enter the config directory and run the startup program: `./node_start.sh`**

```shell
./node_start.sh
```





So far, the node startup is complete
