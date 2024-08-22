# tontainer

Run a local TON network in a container.

## Setup
```
podman-compose up --build -d
```

## Remarks
- Make sure ports `{8081, 8000, 4443, 4441}` are free on the host; due to the network_mode being set to `host`, the chain will expose services on these ports. If not free, remap them manually in `compose.yml`.
- Wait for a couple of minutes for the network to initialize; check logs for the line `Thread is done MyLocalTon - Dump Block XXX`, which indicates that the network is up and running.
- [TON-HTTP-API](https://github.com/toncenter/ton-http-api) is enabled and can be accessed at [localhost:8081](http://localhost:8081).
- A block explorer is also enabled and can be accessed at [localhost:8000/last](http://localhost:8000/last).
