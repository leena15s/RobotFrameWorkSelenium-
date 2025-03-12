*** Settings ***
Resource    Resource/Resource.robot


*** Keywords ***
Open Website Homepage
   Open Browser And Maximize    ${URL}


Navigate To Login Page
    Wait And Click    ${Login_btn}    5s


Navigate To Product Page
    Wait And Click    ${Product_btn}    5s
