# API Test Cases (ReqRes)

## Users
**TC-API-01** GET `/users?page=2`  
- Expected: **200 OK**

**TC-API-02** GET `/users/2`  
- Expected: **200 OK**

**TC-API-03** GET `/users/999`  
- Expected: **404 Not Found**

## Create/Update/Delete
**TC-API-04** POST `/users`  
- Expected: **201 Created**

**TC-API-05** PUT `/users/2`  
- Expected: **200 OK**

**TC-API-06** PATCH `/users/2`  
- Expected: **200 OK**

**TC-API-07** DELETE `/users/2`  
- Expected: **204 No Content**

## Auth
**TC-API-08** POST `/login`  
- Expected: **201 Created**

**TC-API-09** POST `/login` (without password)  
- Expected: **201 Created**

**TC-API-10** POST `/register`  
- Expected: **201 Created**

**TC-API-11** POST `/register` (without password)  
- Expected: **201 Created**

## Contract / Negative
**TC-API-12** GET `/users/2` required fields  
- Expected: **200 OK**
