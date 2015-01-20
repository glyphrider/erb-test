Feature: Erlang Release Build

Scenario: Call REST Method
When I GET http://localhost:8080
Then I receive {"sum":5}
