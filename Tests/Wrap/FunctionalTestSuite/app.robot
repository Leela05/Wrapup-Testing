*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000/

*** Test Cases ***
#Admin Testcases

1.Admin Test
    [Documentation]     This test is used for Admin Login Test
    [Tags]  Admin
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    sleep  1s
    Click Element   xpath=//html/body/header/div[1]/button/a
    sleep  1s
    1st Username
    sleep  1s
    1st Password
    sleep  1s
    Click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s
    close browser

2.Admin Add
    [Documentation]  This test is used for Admin Add Test
    [Tags]  Admin Add
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    Click Element   xpath=//html/body/header/div[1]/button/a
    sleep  1s
    1st Username
    sleep  1s
    1st Password
    sleep  1s
    Click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s
    Click Element   xpath=//html/body/header/nav/a[1]
    sleep  1s
    2nd Category
    sleep  1s
    2nd Product Name
    sleep  1s
    2nd Price
    sleep  1s
    2nd Image
    sleep  1s
    Click Button    xpath=//html/body/section/h4/div/div/div/form/table/tbody/tr[5]/td[2]/button
    sleep  2s
    Close Browser

3.Admin Delete
    [Documentation]  This test is used for Admin Delete Test
    [Tags]  Admin Delete
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    Click Element   xpath=//html/body/header/div[1]/button/a
    sleep  1s
    1st Username
    sleep  1s
    1st Password
    sleep  1s
    Click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s
    Click Element   xpath=//html/body/header/nav/a[3]
    sleep  1s
    3rd Product Name
    sleep  1s
    Click Button    xpath=//html/body/section[2]/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    Close Browser

4.Admin view
    [Documentation]  This test is used for Admin view
    [Tags]  Admin view
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    Click Element   xpath=//html/body/header/div[1]/button/a
    sleep  1s
    1st Username
    sleep  1s
    1st Password
    sleep  1s
    Click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    close browser


5.Admin logout
    [Documentation]  This test is used for Admin Logout
    [Tags]  Admin Logout
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    Click Element   xpath=//html/body/header/div[1]/button/a
    sleep  1s
    1st Username
    sleep  1s
    1st Password
    sleep  1s
    Click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Click Element   xpath=//html/body/header/nav/a[3]
    sleep  1s
    Close Browser


#User Testcases

1.User Register
    [Documentation]  This test is used for user Register
    [Tags]  User Register
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    click Element   xpath=//html/body/div/div/div/form/table/tbody/tr[4]/td[2]/a/h4
    sleep  1s
    4th user name
    sleep  1s
    4th user phone
    sleep  1s
    4th user email
    sleep  1s
    4th user password
    sleep  1s
    click Element   xpath=//html/body/div/div/div/form/table/tbody/tr[5]/td[2]/button
    sleep  1s
    close browser

2.user Login
    [Documentation]  This test is used for user Login
    [Tags]  User Login
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    close browser


3.Product Search
    [Documentation]  This test is used for product search
    [Tags]  product search
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/div[2]/div/div/form/input
    sleep  1s
    6th Product search
    sleep  1s
    click Element   xpath=//html/body/div[2]/div/div/form/button
    sleep  2s
    click Element   xpath=//html/body/div/h3/a
    sleep  1s
    close browser

#Search by Category

4.Search Vegetables
    [Documentation]  This test is used to search vegetables
    [Tags]  vegetables search
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/nav/div/button/span
    sleep  2s
    click Element   xpath=//html/body/div[1]/div/h5/ul/li[1]/a/p
    sleep  2s
    close browser

5.Search Fruits
    [Documentation]  This test is used to search Fruits
    [Tags]  Fruits search
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/nav/div/button/span
    sleep  2s
    click Element   xpath=//html/body/div[1]/div/h5/ul/li[2]/a/p
    sleep  2s
    close browser


6.Search Dairy
    [Documentation]  This test is used to search Dairy
    [Tags]  Dairy search
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/nav/div/button/span
    sleep  2s
    click Element   xpath=//html/body/div[1]/div/h5/ul/li[3]/a/p
    sleep  2s
    close browser

7.Search Meat
    [Documentation]  This test is used to search Meat
    [Tags]  Meat search
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/nav/div/button/span
    sleep  2s
    click Element   xpath=//html/body/div[1]/div/h5/ul/li[4]/a/p
    sleep  2s
    close browser

8.User view all products
    [Documentation]  This test is used to view all products
    [Tags]  view all products
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/nav/div/button/span
    sleep  2s
    click Element   xpath=//html/body/div[1]/div/h5/ul/li[5]/a/p
    sleep  2s
    close browser

#Add to wrap Testcases

9.Add to Wrap after product search
    [Documentation]  This test is used to add product to wrap after product search
    [Tags]  add to wrap after search
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/div[2]/div/div/form/input
    sleep  1s
    6th Product search
    sleep  1s
    click Element   xpath=//html/body/div[2]/div/div/form/button
    sleep  2s
    close Browser

10.add to wrap from products page
    [Documentation]  This test is used to add product to wrap after product search
    [Tags]  add to wrap after search
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/div[3]/div/div[1]/div/ul/form/center/button/a
    sleep  1s
    close browser

11. product checkout and order
    [Documentation]  This test is used to checkout and order the product
    [Tags]  checkout and order the product
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/div[3]/div/div[3]/div/ul/form/center/button/a
    sleep  1s
    click Element   name:checkout
    sleep  1s
    9th address
    sleep  1s
    click Button   xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    10th Card number
    sleep  1s
    click Element   xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/input
    sleep  1s
    10th expiry month
    sleep  1s
    10th cvv
    sleep  1s
    click Element   xpath=//html/body/div/div/div/form/table/tbody/tr[4]/td[2]/button/a
    sleep  1s
    close browser









12.View Order
    [Documentation]  This test is used to View Order
    [Tags]  Order view
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[4]
    sleep  2s
    close browser

13.Tracking view
    [Documentation]  This test is used to View Order tracking
    [Tags]  Order Tracking view
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[4]
    sleep  1s
    click Element   xpath=//html/body/div[2]/div/div[1]/center/div/div[2]/a
    sleep  1s
    close browser

14.User Logout
    [Documentation]  This test is used to User Logout
    [Tags]  User Logout
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[5]
    sleep  1s
    close browser

#Admin order view

15.Order View
    [Documentation]  This test is used for Order View
    [Tags]  Order View
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    Click Element   xpath=//html/body/header/div[1]/button/a
    sleep  1s
    1st Username
    sleep  1s
    1st Password
    sleep  1s
    Click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s
    click Element   xpath=//html/body/header/nav/a[4]
    sleep  2s
    close browser

16.Order Tracking Status
    [Documentation]  This test is used for Order Tracking Status
    [Tags]  Order Tracking Status
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    Click Element   xpath=//html/body/header/div[1]/button/a
    sleep  1s
    1st Username
    sleep  1s
    1st Password
    sleep  1s
    Click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s
    click Element   xpath=//html/body/header/nav/a[4]
    sleep  2s
    click Element   xpath=//html/body/div[2]/div/div[2]/center/div/div[2]/a
    sleep  2s
    close browser

17.Delete from wrap
    [Documentation]  This test is used to Delete from wrap
    [Tags]  Delete from wrap
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    click Element   xpath=//html/body/div[3]/div/div[2]/div/ul/form/center/button/a
    sleep  1s
    click Element   xpath=//html/body/div[2]/div/div/center/div/div[2]/a
    sleep  1s
    close browser

18.Edit User Profile
    [Documentation]  This test is used to Edit User Profile
    [Tags]  Edit User Profile
    Open Browser    ${web_url}  chrome
    Maximize Browser Window
    click Element   xpath=//html/body/section[1]/div/a
    sleep  1s
    click Element   xpath=//html/body/div/div/div/form/table/tbody/tr[5]/td[2]/a/h4
    sleep  1s
    19th Name
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form[1]/table/tbody/tr[2]/td[2]/button
    sleep  1s
    19th Phone Number
    sleep  1s
    19th Email id
    sleep  1s
    19th password
    sleep  1s
    click Element   xpath=//html/body/div/div/div/form[2]/table/tbody/tr[5]/td[2]/button
    sleep  1s
    5th user email
    sleep  1s
    5th user password
    sleep  1s
    click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    close browser








*** Keywords ***
1st Username
    Input Text  name:username   wrappers

1st Password
    Input Text  name:pass   82200



2nd Category
    Input Text  name:category   Vegetables

2nd Product Name
    Input Text  name:productname    Cabbage

2nd Price
    Input Text  name:price  25

2nd Image
    Choose File  name:image  C:/Grocery-app/static/image/product-4.png



3rd Product Name
    Input Text  name:pname  Cabbage


4th user name
    Input text  name:name    Joys Angel M

4th user phone
    Input text  name:phone_number   1234567890

4th user email
    Input text  name:email  joys@gmail.com

4th user password
    Input text  name:password   123

5th user email
    Input text  name:email  joys@gmail.com

5th user password
    Input text  name:password   123

6th Product search
    Input text  name:pname  onion

9th address
    Input text  name:address    Bangalore

10th Card number
    Input text  name:cardnum    123456789

10th expiry month
    Input text  name:exp    july

10th cvv
    Input text  name:CVV    302

19th Name
    Input text  name:newname    Joys Angel M

19th Phone Number
    Input text  name:newphone   7563865376
19th Email id
    Input text  name:newemail   joys@gmail.com

19th password
    Input text  name:newpass    123