*** Settings ***
Documentation  Support library to use basic techniques of Behavior Driven Development (BDD)


*** Keywords ***
Given ${keyword}
    run keyword  ${keyword}

When ${keyword}
    run keyword  ${keyword}

Then ${keyword}
    run keyword  ${keyword}

And  ${keyword}
    run keyword  ${keyword}