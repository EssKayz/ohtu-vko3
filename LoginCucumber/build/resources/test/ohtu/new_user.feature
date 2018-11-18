Feature: A new user account can be created if a proper unused username and password are given


    Scenario: creation is successful with valid username and password
        Given command new user is selected
        When  username "kaapo" and password "qwrwerqrwet2" is selected
        Then  system will respond with "new user registered"
    
    Scenario: creation fails with already taken username and valid password
        Given command new user is selected
        When  username "pekka" and password "akkep" is selected
        Then  system will respond with "new user not registered"

    Scenario: creation fails with too short username and valid password
        Given command new user is selected
        When  username "" and password "" is selected
        Then  system will respond with "new user not registered"

    Scenario: creation fails with valid username and too short password
        Given command new user is selected
        When  username "pekkat" and password "" is selected
        Then  system will respond with "new user not registered"

    Scenario: creation fails with valid username and password enough long but consisting of only letters
        Given command new user is selected
        When  username "pekkas" and password "qwertyuiop" is selected
        Then  system will respond with "new user not registered"

    Scenario: can login with successfully generated account
        Given user "eero" with password "salainen1" is created
        And   command login is selected
        When  username "eero" with password "salainen1" is selected
        Then  system will respond with "logged in"