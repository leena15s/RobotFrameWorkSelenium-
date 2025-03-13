*** Settings ***
Resource    Resource/Resource.robot


*** Keywords ***

Search for product
    Wait And Input Text    ${search_field}      ${search_input}
    Wait And Click    ${search_btn}
#    Scroll Element Into View    ${view_product}
#    Wait Until Page Contains     ${view_product}
#    Wait And Click    ${product_one}
#    Wait And Click    ${product_two}


Add two product
    Scroll Element Into View    ${view_product}
    Wait And Click    ${product_one}
    Wait And Click    ${Continue_Shopping}    3s
    Wait And Click    ${product_two}
    Wait And Click    ${Continue_Shopping}    3s

Continues to checkout
    Wait And Click    ${shopping-cart}    3s
    Sleep    3s
    Wait Until Page Contains Element     ${Checkout_btn}
    Wait And Click     ${Checkout_btn}
    Sleep    5s
    Scroll Element Into View    ${view_product}
    Wait And Click        ${payment}
    Sleep    3s


login success
#    Navigate To Login Page  --> hide for test suite only
    Enter valid credentials


