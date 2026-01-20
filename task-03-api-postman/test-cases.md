# API Test Cases (ReqRes)

## Users
TC-API-01 GET /users?page=2
- Expected:

TC-API-02 GET /users/2
- Expected:

TC-API-03 GET /users/999
- Expected: 

## Create/Update/Delete
TC-API-04 POST /users (валидные данные)
- Body: { "name": "Somita", "job": "QA" }
- Expected: 

TC-API-05 PUT /users/2
- Expected: 

TC-API-06 PATCH /users/2
- Expected: 

TC-API-07 DELETE /users/2
- Expected: 

## Auth
TC-API-08 POST /login (валидные данные)
- Expected: 

TC-API-09 POST /login (без password)
- Expected: 

TC-API-10 POST /register (валидные данные)
- Expected:
  
TC-API-11 POST /register (без password)
- Expected: 

## Contract / Negative
TC-API-12 Проверка обязательных полей в GET /users/2
- Expected: 
