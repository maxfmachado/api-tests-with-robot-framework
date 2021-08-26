***Settings***
Documentation    Sessions route tests

Resource    ${EXECDIR}/resources/base.robot

***Test Cases***
Successfully logged in
    ${payload}          Get Json        login_attempt.json
    ${response}         POST Login      ${payload['login_success']}
    Status Should Be    200             ${response}
    ${token}            Set Variable    ${response.json()}[user_token]
    Length Should Be    ${token}        24

Login with no success
    [Template]    Login Attempt
    login_attempt.json    incorrect_pwd     401    Unauthorized
    login_attempt.json    wrong_email       412    wrong email
    login_attempt.json    user_not_found    401    Unauthorized
    login_attempt.json    empty_email       412    required email
    login_attempt.json    empty_pwd         412    required password
    login_attempt.json    without_email     412    required email
    login_attempt.json    without_pwd       412    required password