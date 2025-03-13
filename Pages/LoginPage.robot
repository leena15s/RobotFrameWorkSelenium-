*** Settings ***
Resource    Resource/Resource.robot



*** Keywords ***

Enter valid credentials
    Wait And Input Text    ${email_login}     ${valid_email}
    Wait And Input Text    ${password_login}      ${valid_password}
    Wait And Click    ${login-button}

Verify login success
    Wait And Click       ${logout_btn}    6s
    Sleep    3s

Login with csv DDT
   [Arguments]    ${username}    ${password}
    Wait And Input Text    ${username}
    Wait And Input Text     ${password}
    Wait And Click     ${login-button}


Login With Multiple Users From CSV (DDT)
   Sleep    2s
   ${data}    Read Csv File To List       ${CSV_}
   FOR    ${row}    IN    @{data}
        ${username}    ${password}    Set Variable     ${row}[0]   ${row}[1]
        Log    Logging in with ${username} and ${password}
        Wait And Input Text    ${email_login}      ${username}
        Wait And Input Text    ${password_login}       ${password}
        Wait And Click    ${login-button}
   END
