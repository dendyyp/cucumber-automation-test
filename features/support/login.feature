Feature: Login Page 

Scenario: Success Login with correct credential
  Given I visit "https://portal.youtap.id/landing-page"
  When I click Sign In
  And I fill "correct" phone number
  And I fill "valid" password
  And I click login button
  Then redirect to youtap dashboard
  And login has been "success"

Scenario: Login with incorrect credentials
  Given I visit "https://portal.youtap.id/landing-page"
  When I click Sign In
  And I fill "incorrect" phone number
  And I fill "wrong" password
  And I click login button
  Then login has been "unsuccessful"

