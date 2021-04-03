*** Settings ***


Library        SeleniumLibrary
Library        BuiltIn

Variables      ../element_mapping/FlightBookingMapping.py
Variables      ../element_mapping/FlightUpdateMapping.py
Variables      ../element_mapping/PassengersListMapping.py
Variables      ../element_mapping/PassengersSeatingMapping.py
Variables      ../element_mapping/PassengersBagsMapping.py

*** Keywords ***
I am in the flight company website to book a trip
    # Make sure the company's website has been loaded successfull
    Wait until element is visible  ${TXT_WEBSITE_NAME}

I inform the departure and destination locales
    [Arguments]  ${departure}  ${destination}
    Set Selenium Speed  1

    # Makes sure the locales panel is available to fill it
    Wait until element is visible  ${INPUT_TRIP_DEPARTURE}  50
    Wait until element is visible  ${INPUT_TRIP_DESTINATION}  50
    Clear Element Text  ${INPUT_TRIP_DEPARTURE}
    Clear Element Text  ${INPUT_TRIP_DESTINATION}
    Input Text  ${INPUT_TRIP_DEPARTURE}  ${departure}
    Press Keys  ${INPUT_TRIP_DEPARTURE}  TAB
    Input Text  ${INPUT_TRIP_DESTINATION}  ${destination}
    Click Element  ${BTN_SEARCH}

    # Makes sure the calendar panel is available to select it
    Wait until element is visible  ${SELECTION_CALENDARS_PANEL}  50
    Click Element  ${SELECTION_CALENDARS_PANEL}

    # Makes sure the departure date panel is available to fill it
    Wait until element is visible  ${SELECTION_DEPARTURE_DATE}  50
    Click Element  ${SELECTION_DEPARTURE_DATE}
    Wait until element is visible  ${INPUT_DEPARTURE_MONTH}  50
    Click Element  ${INPUT_DEPARTURE_MONTH}
    Wait until element is visible  ${INPUT_DEPARTURE_DAY}  50
    Click Element  ${INPUT_DEPARTURE_DAY}

    # Makes sure the return date panel is available to fill it
    Wait until element is visible  ${SELECTION_RETURN_DATE}  50
    Click Element  ${SELECTION_RETURN_DATE}
    Wait until element is visible  ${INPUT_RETURN_MONTH}  50
    Click Element  ${INPUT_RETURN_MONTH}
    Wait until element is visible  ${INPUT_RETURN_DAY}  50
    Click Element  ${INPUT_RETURN_DAY}

I inform the quantity of passengers
    # Makes sure the panel for passengers informations is available to fill them
    Wait until element is visible  ${SELECTION_PASSENGERS}  50
    Click Element  ${SELECTION_PASSENGERS}
    Wait until element is visible  ${BTN_ADD_ADULT}  50
    Wait until element is visible  ${BTN_ADD_CHILDREN}  50
    Click Element  ${BTN_ADD_ADULT}
    Click Element  ${BTN_ADD_CHILDREN}
    Wait until element is visible  ${BTN_DONE_PASSENGERS}  50
    Click Element  ${BTN_DONE_PASSENGERS}
    Click Element  ${BTN_SEARCH}

I change the dates for departure and return
    # DEPARTURE FLIGHT - Makes sure the first information about departure date is loaded
    Wait until element is visible  ${BTN_FIRST_DATE_SELECTED_DEPARTURE}  50
    Scroll Element Into View  ${BTN_FIRST_DATE_SELECTED_DEPARTURE}

    # Scroll the departure's carousel to select a new/later date for departure
    FOR  ${index}  IN RANGE  14
        Wait until element is visible  ${BTN_NEXT_RANGE_CAROUSEL_DEPARTURE}  50
        Click Element  ${BTN_NEXT_RANGE_CAROUSEL_DEPARTURE}
    END

    # Makes sure the new date for departure is selected
    Wait until element is visible  ${BTN_NEW_DATE_SELECTED_DEPARTURE}  50
    Click Element  ${BTN_NEW_DATE_SELECTED_DEPARTURE}

    # Makes sure the flight available for the selected date to departure is chosen
    Wait until element is visible  ${BTN_FLIGHT_TO_DEPARTURE}  50
    Scroll Element Into View  ${BTN_FLIGHT_TO_DEPARTURE}
    Click Element  ${BTN_FLIGHT_TO_DEPARTURE}

    # Makes sure the fare value of the chosen flight to departure is selected
    Wait until element is visible  ${BTN_FLIGHT_FARE_TO_DEPARTURE}  50
    Scroll Element Into View  ${BTN_FLIGHT_FARE_TO_DEPARTURE}
    Click Element  ${BTN_FLIGHT_FARE_TO_DEPARTURE}

    # RETURN FLIGH - Makes sure the first information about return date is loaded
    Wait until element is visible  ${BTN_FIRST_DATE_SELECTED_RETURN}  50
    Scroll Element Into View  ${BTN_FIRST_DATE_SELECTED_RETURN}

    # Scroll the return's carousel to select a new/later date for return
    FOR  ${index}  IN RANGE  10
        Wait until element is visible  ${BTN_NEXT_RANGE_CAROUSEL_RETURN}  50
        Click Element  ${BTN_NEXT_RANGE_CAROUSEL_RETURN}
    END

    # Makes sure the new date for return is selected
    Wait until element is visible  ${BTN_NEW_DATE_SELECTED_RETURN}  50
    Click Element  ${BTN_NEW_DATE_SELECTED_RETURN}

    # Makes sure the flight available for the selected date to return is chosen
    Wait until element is visible  ${BTN_FLIGHT_TO_RETURN}  50
    Scroll Element Into View  ${BTN_FLIGHT_TO_RETURN}
    Click Element  ${BTN_FLIGHT_TO_RETURN}

    # Makes sure the fare value of the chosen flight to return is selected
    Wait until element is visible  ${BTN_FLIGHT_FARE_TO_RETURN}  50
    Scroll Element Into View  ${BTN_FLIGHT_FARE_TO_RETURN}
    Click Element  ${BTN_FLIGHT_FARE_TO_RETURN}

I choose to log in later on the company website
    # Option to follow the booking flow without register now on the company's website
    Wait until element is visible  ${LNK_LOGIN_COMPANY_LATER}  50
    Click Element  ${LNK_LOGIN_COMPANY_LATER}

I inform the passengers details
    # Makes sure the panel for the first passenger is available to fill it
    Wait until element is visible  ${LIST_TITLE_FIRST_PAX}  50
    Wait until element is visible  ${TXT_FIRST_NAME_FIRST_PAX}  50
    Wait until element is visible  ${TXT_LAST_NAME_FIRST_PAX}  50
    Scroll Element Into View  ${LIST_TITLE_FIRST_PAX}
    Click Element  ${LIST_TITLE_FIRST_PAX}
    Click Element  ${LIST_OPTION_FIRST_PAX}
    Input Text  ${TXT_FIRST_NAME_FIRST_PAX}  SONIA
    Input Text  ${TXT_LAST_NAME_FIRST_PAX}  PEREIRA

    # Makes sure the panel for the second passenger is available to fill it
    Wait until element is visible  ${LIST_TITLE_SECOND_PAX}  50
    Wait until element is visible  ${TXT_FIRST_NAME_SECOND_PAX}  50
    Wait until element is visible  ${TXT_LAST_NAME_SECOND_PAX}  50
    Scroll Element Into View  ${LIST_TITLE_SECOND_PAX}
    Click Element  ${LIST_TITLE_SECOND_PAX}
    Click Element  ${LIST_OPTION_SECOND_PAX}
    Input Text  ${TXT_FIRST_NAME_SECOND_PAX}  DIOGO
    Input Text  ${TXT_LAST_NAME_SECOND_PAX}  BETTENCOURT

    # Makes sure the panel for the third passenger is available to fill it
    Wait until element is visible  ${TXT_FIRST_NAME_THIRD_PAX}  50
    Wait until element is visible  ${TXT_LAST_NAME_THIRD_PAX}  50
    Scroll Element Into View  ${TXT_FIRST_NAME_THIRD_PAX}
    Input Text  ${TXT_FIRST_NAME_THIRD_PAX}  INES
    Input Text  ${TXT_LAST_NAME_THIRD_PAX}  MARCAL

    # Makes sure all passenger informations are done and continue with the flow
    Wait until element is visible  ${BTN_PASSENGERS_DONE}  50
    Scroll Element Into View  ${BTN_PASSENGERS_DONE}
    Click Element  ${BTN_PASSENGERS_DONE}

I select the passengers seats
    # Close the advice about childrens sit together adults
    Wait until element is visible  ${BTN_FAMILY_SEATING_ADVICE}  50
    Click Element  ${BTN_FAMILY_SEATING_ADVICE}

    # Makes sure all passengers has their seats selected
    Wait until element is visible  ${BTN_SEAT_FIRST_PASSENGER_DEPARTURE}  50
    Click Element  ${BTN_SEAT_FIRST_PASSENGER_DEPARTURE}
    Wait until element is visible  ${BTN_SEAT_SECOND_PASSENGER_DEPARTURE}  50
    Click Element  ${BTN_SEAT_SECOND_PASSENGER_DEPARTURE}
    Wait until element is visible  ${BTN_SEAT_THIRD_PASSENGER_DEPARTURE}  50
    Click Element  ${BTN_SEAT_THIRD_PASSENGER_DEPARTURE}

    # Select the option to select the options for the flight back now
    Wait until element is visible  ${BTN_SEATS_NEXT_FLIGHT}  50
    Click Element  ${BTN_SEATS_NEXT_FLIGHT}

    # Select the option to use the same seats for the fligh back
    Wait until element is visible  ${LNK_RESERVE_SAME_SEATS_RETURN}  50
    Click Element  ${LNK_RESERVE_SAME_SEATS_RETURN}

    # Close the advice about fast tracking if it is shown on the screen
    Run Keyword And Ignore Error  Wait until element is visible  ${LNK_ADD_FAST_TRACK}  50
    Run Keyword And Ignore Error  Click Element  ${LNK_ADD_FAST_TRACK}

I select the same kind of bag for all passengers
    # Select the option to use the same type of bag for all the passengers
    Wait until element is visible  ${BTN_SMALL_BAG_ALL_PASSENGERS}  50
    Click Element  ${BTN_SMALL_BAG_ALL_PASSENGERS}

    # Makes sure the information about bags is done and continue with the flow
    Wait until element is visible  ${BTN_BAGS_DONE}  50
    Click Element  ${BTN_BAGS_DONE}

I finish my trip reservation
    # Close the advice about travelling with kids if it is shown on the screen
    Run Keyword And Ignore Error  Wait until element is visible  ${LNK_TRAVEL_WITH_KIDS}  50
    Run Keyword And Ignore Error  Click Element  ${LNK_TRAVEL_WITH_KIDS}

    # Select the continue button to finalize the reservation process
    Wait until element is visible  ${BTN_FINISH}  50
    Click Element  ${BTN_FINISH}

    # Checks if the message about the reservation process is presented making sure it was done successfull
    Wait until element is visible  ${FRAME_RESERVATION_SUCCESSFULL}  50