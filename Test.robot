*** Settings ***
Library               RequestsLibrary

*** Variables ***
${BASE_URL}  http://localhost:3000

*** Test Cases ***
true_when_x_is_17
    ${response}=    GET  ${BASE_URL}/is_prime/17
    Status Should Be     200
    Should Be Equal  ${response.text}  true

false_when_x_is_36
    ${response}=    GET  ${BASE_URL}/is_prime/36
    Status Should Be     200
    Should Be Equal  ${response.text}  false

true_when_x_is_13219
    ${response}=    GET  ${BASE_URL}/is_prime/13219
    Status Should Be     200
    Should Be Equal  ${response.text}  true
    