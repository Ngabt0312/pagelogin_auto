Feature: test login page,
I want to check the login function,
So that I have many case.

Background: Open browser
Given navigate to login page successfully

Scenario: valid login
    When input "tomsmith" and "SuperSecretPassword!"
    Then message display "You logged into a secure area!"

Scenario Outline: invalid login
    When input "<username>" and "<password>"
    Then message display "<mess>"

Examples: case
    |username   |password               |mess                       |
    |123a@      |SuperSecretPassword!   |Your username is invalid!  |
    |123        |123                    |Your username is invalid!  |
    |123456     |SuperSecretPassword!   |Your username is invalid!  |
    |tomsmith   |123                    |Your password is invalid!  |

