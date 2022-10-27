# forensics_trick_or_breach (2)

After opening the `capture.pcap`, we can see a lot of UDP packets.

Each packet has a `DNS.Queries.Name` in this format:
```
<hex-code>.pumpkincorp.com
```

Turns out, we have to take all response (or request) and concatenate all `hex-code` together. [Hex codes concatenated](./hexcodes.txt)

Once run in [dcode](https://www.dcode.fr/cipher-identifier), it identifies the input as `Hexadecimal Data`. (It gives [this xlsx file](./dcode-data.xlsx))

With the flag inside: \
`HTB{M4g1c_c4nn0t_pr3v3nt_d4t4_br34ch}`
