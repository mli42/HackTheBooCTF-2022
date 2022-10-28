# pwn_entity (2)

We have a script that stores a number (`unsigned long long`, 8 bytes long) inside an union, which can be interpreted as a string (`char [8]`) too.

If the number is equal to `13371337`, we can retrieve the flag, but the number input is protected, but the string input is not !

We want to give a string that will be equal to `13371337` when interpreted as a integer => We can give it as hexadecimal characters: `0xcc07c9`.

So we want to:
- store the number as hexadecimal chars,
- verify the content of the union as a number,
- request the flag.

Thus our payload is:
```bash
(echo T; echo S; echo -e '\xc9\x07\xcc\x00\x00\x00\x00\x00'; echo R; echo L; echo C) | nc IP PORT
```

We have:
```
>> HTB{f1ght_34ch_3nt1ty_45_4_un10n}
```
