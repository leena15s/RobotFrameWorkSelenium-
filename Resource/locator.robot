
*** Variables ***
#whole web
${BROWSER}        Chrome


# home page
${URL}         https://www.automationexercise.com/
${Login_btn}   //*[contains(text(), "Signup / Login")]
${Product_btn}    //i[contains(@class, 'card_travel')]

# login page
${email_login}     //input[@data-qa="login-email"]
${valid_email}       john.doe@automation.com
${password_login}     //input[@data-qa="login-password"]
${valid_password}       SecurePassword123
${login-button}           //button[@data-qa="login-button"]
${logout_btn}            //a[@href="/logout"]

# DDT
${CSV_}    TestData/UsersForLogin.csv
${error_msg}    //p[text()='Your email or password is incorrect!']

# product page to end
${search_field}    //input[@id='search_product']
${search_input}    women
${search_btn}    //button[@id='submit_search']
${view_product}    //p[contains(text(), 'Get the most recent updates from')]

${product_one}       //*[@data-product-id='7']
${product_two}        //a[@data-product-id='42']
${Continue_Shopping}    //button[contains(text(), 'Continue Shopping')]

${shopping-cart}      //i[contains(@class, 'fa-shopping-cart')]
${Checkout_btn}    //a[contains(@class, 'check_out')]
${Continue_checkout}    //button[contains(text(), 'Continue Shopping')]

${payment}        //a[contains(text(), 'Place Order')]

