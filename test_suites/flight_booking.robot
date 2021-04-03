*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn

Resource       ../support/BDDConfig.robot
Resource       ../support/Hooks.robot
Resource       ../keywords/FlightsPage.robot

Test Setup      Open Web browser  https://www.ryanair.com/gb/en  chrome
Test Teardown   Close browser opened


*** Test Cases ***

Scenario: Performing a Trip Reservation
    Given I am in the flight company website to book a trip
        And I inform the departure and destination locales  Lisbon  Malaga
        And I inform the quantity of passengers
    When I change the dates for departure and return
        And I choose to log in later on the company website
        And I inform the passengers details
        And I select the passengers seats
        And I select the same kind of bag for all passengers
    Then I finish my trip reservation