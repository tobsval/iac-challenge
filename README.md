# iac-challenge

Travis Build: [![Build Status](https://travis-ci.com/tobsval/iac-challenge.svg?branch=master)](https://travis-ci.com/tobsval/iac-challenge)

Current VMs FW Config:

```
To                         Action      From

SSH                        ALLOW       Anywhere
224.0.0.251 mDNS           ALLOW       Anywhere
22/tcp                     ALLOW       Anywhere
Anywhere                   ALLOW       10.0.0.0/8
Anywhere                   ALLOW       192.168.100.0/24
SSH (v6)                   ALLOW       Anywhere (v6)
ff02::fb mDNS              ALLOW       Anywhere (v6)
22/tcp (v6)                ALLOW       Anywhere (v6)
```
