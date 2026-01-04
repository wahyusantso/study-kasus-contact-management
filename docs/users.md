# User API Spec

## Register User API

Endpoint : POST /api/users

Request Body :

```json
{
    "username": "devs",
    "password": "rahasia1",
    "name": "Local Devs"
}
```

Response Body Success :
```json
{
    "data": {
        "username": "devs",
        "name": "Local Devs"
     }
}
```

Response Body Error :
```json
{
    "errors": "username already exist"
}
```

## Login User API

Endpoint : POST /api/users/login

Request Body :
```json
{
    "username": "devs",
    "password": "rahasia1"
}
```

Response Body Success :
```json
{
    "data": {
        "token": "unique-token"
    }
}
```

Response Body Error :
```json
{
    "errors": "username or password wrong"
}
```

## Update User API

<!-- menggunakan method patch kerena hanya sebagian data yang di update -->
Endpoint : PATCH /api/users/current

Headers :
- Authorization : token

Request Body :
```json
{
    "name": "devs local updater", //opsional
    "password": "rahasia update" //opsional
}
```

Response Body Success :
```json
{
    "data": {
        "username": "devs",
        "name": "devs local updater"
    }
}
```

Response Body Error :
```json
{
    "errors": "name length max 100"
}
``` 

## Get User API

Endpoint : GET /api/users/current

Headers :
- Authorization : token

Response Body Success :
```json
{
    "data": {
        "username": "devs",
        "name": "devs local"
    }
}
```

Response Body Error :
```json
{
    "errors": "Unauthorized"
}
```

## Logout User API

Endpoint : DELETE /api/users/logout

Headers :
- Authorization : token

Response Body Success :
```json
{
    "data": "OK"
}
```

Response Body Error :
```json
{
    "errors": "Unauthorized"
}
```