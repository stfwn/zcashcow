# zcashcow
A dockerized version of the official Zcash client for Debian.

Read the blog post [over here](http://stfwn.xyz/Dockerizing-a-crypto-miner/) or go to [the Docker Hub repository](https://hub.docker.com/r/stfwn/zcashcow/).

## Usage
1. Configure your ~/.zcash/zcash.conf file: (don't forget to substitute `username` for one of your choosing)
```
mkdir ~/.zcash &&\
echo "rpcuser=username" >> ~/.zcash/zcash.conf &&\
echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >> ~/.zcash/zcash.conf &&\
echo "mainnet=1" >> ~/.zcash/zcash.conf &&\
echo "addnode=mainnet.z.cash" >> ~/.zcash/zcash.conf &&\
echo "gen=1" >> ~/.zcash/zcash.conf
```

2. Run with `docker run -v ~/.zcash:/root/.zcash -t stfwn/zcashcow -irm`<Paste>
