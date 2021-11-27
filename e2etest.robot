*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}          Chrome
${URL}              https://vaccine-haven.herokuapp.com
${CITIZENID}        9621054596385
${BIRTHDATE}        09-12-2000
${OCCUPATION}       Student   
${PHONENUMBER}      0813508294
${FIRSTNAME}        Thornthep
${LASTNAME}         Chomchuen
${ADDRESS}          81/555 aeiou

*** Test Cases ***

Verify Item
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait   5
    Click Element    id=nav__info__link
    Sleep   2
    Click Element    id=nav__home__link

Valid Registeration
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait   5
    Click Element    id=dropdown
    Click Element    id=nav__register__link
    Input Text       id:citizen_id    ${CITIZENID}
    Input Text       id:name    ${FIRSTNAME}
    Input Text       id:surname    ${LASTNAME}
    Input Text       id:birth_date  ${BIRTHDATE}
    Input Text       id:occupation    ${OCCUPATION}
    Input Text       id:phone_number   ${PHONENUMBER}
    Input Text       id:address     ${ADDRESS}
    Click Button     id=register__btn

Valid Reservation
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait   5
    Click Element    id=dropdown
    Click Element    id=nav__reserve__link
    Input Text       id:citizen_id    ${CITIZENID}
    Select From List By Value    id:site_name  OGYHSite
    Select From List By Value    id:vaccine_name    Pfizer
    Click Button     id=reserve__btn

Valid Cancel Registeration  
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait   5
    Click Element    id=nav__info__link
    Input Text       id:citizen_id    ${CITIZENID}
    Click Button     id=info__btn
    Click Button     id=cancel__btn