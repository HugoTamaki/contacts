# Phone contacts API

API made to save, get and delete contacts.

URL to access: `https://vast-mesa-46305.herokuapp.com/api/v1`

## Nicknames

This api separates contacts through nicknames, so you MUST send a nick name everytime you CREATE or get an INDEX of contacts,
and beware, the first time you use it, remember it so that you can request the contacts associated to the nickname

## INDEX

### URL
```
https://vast-mesa-46305.herokuapp.com/api/v1/contacts?nick=batman
```

Once you use a nickname, it will create a user by the nickname and try to get contacts associated to the nick

### Response sample
```
{"contacts": 
  [
    {
      "id":1, 
      "name":"Felipe",
      "number":"999-9999",
      "carrier": {
        "name":"Oi"
      },
      "user":{
        "nick":"superman"
      }
    },{
      "id":2,
      "name":"Eduardo",
      "number":"8880-9999",
      "carrier":{
        "name":"Oi"
      },
      "user":{
        "nick":"superman"
      }
    },{
      "id":3,
      "name":"Maria",
      "number":"888-7777",
      "carrier":{
        "name":"Oi"
      },
      "user":{
        "nick":"superman"
      }
    }
  ]
}
```

## POST

### URL

```
https://vast-mesa-46305.herokuapp.com/api/v1/contacts
```

### Body format
```
{
  "contact": {
    "name":"Felipe",
    "number":"999-9999",
    "carrier_id": 1
  },
  "nick": "batman"
}
```

### Response

It responds with the created contact

## Delete

### URL
```
https://vast-mesa-46305.herokuapp.com/api/v1/contacts/1
```

### Response

It responds with deleted contact

