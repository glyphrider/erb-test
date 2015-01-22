Feature: Erlang Release Build

Scenario: Call REST Method
When I GET http://localhost:8080
Then I receive {"sum":5}

Scenario: POST
When I POST {"addends":[4,5,6,7]} to http://localhost:8080
Then I receive {"sum":22}
