### F-node quick construction

Use wget to download and run FOD

```shell
wget https://docs.forestscan.io/install.sh
```

Go to https://github.com/fodchain/Manuscript/releases or new version number

For example: `0.0.5` I wrote below

```
Please enter the correct version number(Such as 1.0.0):0.0.5

------------
--2021-12-04 06:58:46--  https://github.com/fodchain/Manuscript/releases/download/0.0.5/F-node.zip
Resolving github.com (github.com)... 140.82.113.3
Connecting to github.com (github.com)|140.82.113.3|:443... connected.
HTTP request sent, awaiting response... 302 Found
```

- Create a wallet

  ```
  fod new
  ```

  After the creation is complete, you will be prompted to save the password. In the current version, if you want to build an F node, please save the password

  If there is a registered F node before, you can use `fod wallet import` to import the wallet

- Register F node

  ```
  fod mining register
  ```

- Stake node

  ```
  fod mining  pledge
  ```

- Configure and start

  ```
  fod exec  config
  ```

​       After creation, you can choose to use `fod exec status` to query the process





If an error occurs on your node unexpectedly, you can start it with these commands

- forest

  ```
  cd /root/forest
  nohup java -jar -Xms256m -Xmx1024m -XX:PermSize=256M -XX:MaxPermSize=512M -Dconfigpath=/root/forest/config.yml /root/forest/forest_node-1.0-SNAPSHOT.jar --spring.datasource.url=jdbc:sqlite:/root/forest/db/forest_client.db > /dev/null 2>&1 &
  ```

- Node

  ```
  cd /root/galaxy_test/config
   ./node_pid_clear.sh 
   ./node_start.sh
  ```

- walletdir

  Walletdir program you can use fod command, it will run automatically
