*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}      ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    avishiek@gmail.com
    input text  id:Password     12345
    click element   xpath://input[@class='button-1 login-button']
