#### Register as an F node

**The mode of operation is in the directory where `shuttle.jar` is stored**

```shell
java -jar shuttle.jar --wallet-url http://192.168.3.11:10004 --url http://192.168.3.11:8523
```



**1.Start the jar in the `walletdir/` directory**

```shell
nohup java -jar wallet-web-dev-1.0.0.jar &
```

**2.Create a wallet**

```
wallet create -n address --to-console
```

- `address`The param.ini file has the same producer configuration



**3.Import the private key into the wallet:**

```
wallet import -n address --private-key privateKey
```

- `privateKey`  Please replace

**4.New account**

```
create account galaxy address publicKey
```

galaxy is the system account, followed by the previously generated account address and public key



**5.Register F node**

```shell
push action galaxy.sys regforest '{"account":"address", "pubKey":"publicKey", "url":"192.168.3.11"}' -p address@active
```

**6.mortgage**

```shell
push action galaxy.sys delegatebw '{"account":"address","binder":"address","amount":"3000.000000 FOD","height":"1400"}' -p address@active
```

Please make sure that the account has enough money when collateralizing
`account`: mortgagor
`binder`: bind F node
`amount`: the amount of mortgage tokens,
`height`: the estimated height of the redemption

If you report some kind of error, please unlock your wallet or confirm whether the FOD balance is sufficient

```shell
 wallet unlock -n address -p password
```

