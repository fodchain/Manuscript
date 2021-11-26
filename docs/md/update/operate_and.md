### Update mainnet



**VFri 26 Nov 2021**

The forest network was updated yesterday, and you need to modify it on your F node Server.

``` Enter the /root/galaxy_test directory to operate```

Modify the `param.ini` file; modify `node1_group1=51.77.85.44` to `node1_group1=18.181.123.111`

Run `node_pid_clear.sh` to close the node program
Run `galaxy_pc_config.sh` to reconfigure the node
Then run `node_start.sh` to start and start synchronizing data

