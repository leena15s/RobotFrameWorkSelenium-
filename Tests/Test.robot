*** Settings ***
Resource    Resource/Resource.robot

Suite Setup    Open Website Homepage
Suite Teardown    Close Browser


*** Test Cases ***

TC01 Verify login success
    Navigate To Login Page
    Enter valid credentials
    Verify login success


TC02 Login Test with DDT
#    Navigate To Login Page   --> hid for test suite only
    Login With Multiple Users From CSV (DDT)
    Verify login success


TC03 END TO END
    login success
    Navigate To Product Page
    Search For Product
    Add Two Product
    Sleep    3s
    Continues to checkout
    Sleep    3s
    

