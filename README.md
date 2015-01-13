# rails-api-authentication
Rails app with authentication support (json base api Login, Logout, Registration)

Login
-----

curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/v1/sessions -d "{\"user\":{\"email\":\"user@example.com\",\"password\":\"secret123\"}}"

{"success":true,"info":"Logged in","data":{"auth_token":"P1UFp_NKZbMratry1Vhw"}}

Logout
------

curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X DELETE http://localhost:3000/api/v1/sessions/\?auth_token\=P1UFp_NKZbMratry1Vhw

Register
--------

curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/v1/registrations -d "{\"user\":{\"email\":\"user1@example.com\",\"name\":\"anotheruser\",\"password\":\"secret123\",\"password_confirmation\":\"secret123\"}}"

{"success":true,"info":"Registered","data":{"user":{"id":2,"name":"anotheruser","email":"user1@example.com","created_at":"2015-01-13T21:05:21.804Z","updated_at":"2015-01-13T21:05:21.884Z","authentication_token":"sV2ZwQxQXyZcJALcUHYy"},"auth_token":"sV2ZwQxQXyZcJALcUHYy"}}
