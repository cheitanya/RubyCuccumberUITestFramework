Feature: Login
  Scenario: verify Valid Login to Spree
    Given User in on Home page
    When User enter credentials email"xt@xt.com"and password"xtxtxt"
    Then User should be able to see My account link on home page

  Scenario: verify Invalid Login to Spree
    Given User in on Home page
    When User enter credentials email"xt@xt.xom"and password"xtxtxt"
    Then User should not be able to see My account link on home page