
### ALL LOCATORS RELATED TO THE FLIGHT BOOKING FLOW ###

#--- Trip Locales ---#
INPUT_TRIP_DEPARTURE='xpath://input[@id="input-button__departure"]'
INPUT_TRIP_DESTINATION='xpath://input[@id="input-button__destination"]'
SELECTION_CALENDARS_PANEL='xpath://div[@class="flight-widget-controls__calendar ng-tns-c78-4 ng-trigger ng-trigger-datesContainerInitialRender"]'

#--- Departure Date Information ---#
SELECTION_DEPARTURE_DATE='xpath://div[@class="input-button__input ng-star-inserted"]/ancestor::div[@data-ref="input-button__dates-from"]'
INPUT_DEPARTURE_MONTH='xpath://div[contains(text(), "May")]'
INPUT_DEPARTURE_DAY='xpath://div[@data-id="2021-05-02"]'

#--- Return Date Information ---#
SELECTION_RETURN_DATE='xpath://div[@class="input-button__input ng-star-inserted"]/ancestor::div[@data-ref="input-button__dates-to"]'
INPUT_RETURN_MONTH='xpath://div[contains(text(), "Jun")]'
INPUT_RETURN_DAY='xpath://div[@data-id="2021-06-16"]'
BTN_SEARCH='xpath://button[@class="flight-search-widget__start-search ng-tns-c79-3 ng-trigger ng-trigger-collapseExpandCta ry-button--gradient-yellow"]'

#--- Passengers Information ---#
SELECTION_PASSENGERS='xpath://div[@class="input-button__input input-button__display-value--truncate-text ng-star-inserted"]'
BTN_ADD_ADULT='xpath://*[@id="ry-tooltip-6"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-passengers-container/fsw-passengers/fsw-passengers-picker-container/fsw-passengers-picker/ry-counter[1]/div[2]/div[3]'
BTN_ADD_CHILDREN='xpath://*[@id="ry-tooltip-6"]/div[2]/hp-app-controls-tooltips/fsw-controls-tooltips-container/fsw-controls-tooltips/fsw-passengers-container/fsw-passengers/fsw-passengers-picker-container/fsw-passengers-picker/ry-counter[3]/div[2]/div[3]'
BTN_DONE_PASSENGERS='xpath://button[@class="passengers__confirm-button ry-button--anchor-blue ry-button--anchor"]'

#--- Miscelaneous ---#
TXT_WEBSITE_NAME='xpath://a[@class="ry-header__logo-container"]'