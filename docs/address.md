# Address API Spec

## Create Address API

Endpoint : POST /api/contacts/:contactId/addresses

Headers :
- Authorization : token

Request Body :
```json
{
    "street" : "Jl. Arief rahman",
    "city" : "Depok",
    "Province" : "Jawa Barat",
    "country" : "Indonesia",
    "postal_code" : "08213"
}
```

Response Body Success :
```json
{
    "data" : {
        "id" : 1,
        "street" : "Jl. Arief rahman",
        "city" : "Depok",
        "Province" : "Jawa Barat",
        "country" : "Indonesia",
        "postal_code" : "08213"
    }
}
```

Response Body Error :
```json
{
    "errors" : "Country is required"
}
```

## Update Address API

Endpoint : PUT /api/contacts/:contactId/addresses/:addressId

Headers :
- Authorization : token

Request Body :
```json
{
    "street" : "Jl. Arief rahman",
    "city" : "Depok",
    "Province" : "Jawa Barat",
    "country" : "Indonesia",
    "postal_code" : "08213"
}
```

Response Body Success :
```json
{
    "data" : {
        "id" : 1,
        "street" : "Jl. Arief rahman",
        "city" : "Depok",
        "Province" : "Jawa Barat",
        "country" : "Indonesia",
        "postal_code" : "08213"
    }
}
```

Response Body Error :
```json
{
    "errors" : "Country is required"
}
```

## Get Address API

Endpoint : GET /api/contacts/:contactId/addresses/:addressId

Headers :
- Authorization : token

Response Body Success :
```json
{
    "data" : {
        "id" : 1,
        "street" : "Jl. Arief rahman",
        "city" : "Depok",
        "Province" : "Jawa Barat",
        "country" : "Indonesia",
        "postal_code" : "08213"
    }
}
```

Response Body Error :
```json
{
    "errors" : "contact is not found"
}
```

## List Addresses API

Endpoint : GET /api/contacts/:contactId/addresses

Headers :
- Authorization : token

Response Body Success :
```json
{
    "data" : [
        {
            "id" : 1, 
            "street" : "Jl. Arief rahman",
            "city" : "Depok",
            "Province" : "Jawa Barat",
            "country" : "Indonesia",
            "postal_code" : "08213"
        },
        {
            "id" : 2,
            "street" : "Jl. Arief rahman",
            "city" : "Depok",
            "Province" : "Jawa Barat",
            "country" : "Indonesia",
            "postal_code" : "08213"
        }
    ]
}
```

Response Body Error :
```json
{
    "errors" : "contact is not found"
}
```

## Remove Address API

Endpoint : DELETE /api/contacts/:contactId/addresses/:addressId

Headers :
- Authorization : token

Response Body Success :
```json
{
    "data" : "OK"
}
```

Response Body Error :
```json
{
    "errors" : "address not found"
}
```