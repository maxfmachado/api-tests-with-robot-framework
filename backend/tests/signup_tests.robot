***Settings***
Documentation    Signup Tests
Resource         ${EXECDIR}/resources/base.robot

***Test Cases***
Add new user
    ${payload}              Get Json                signup.json
    ${new_user}             Set Variable            ${payload['new_user']}
    Remove User By Email    ${new_user['email']}
    ${response}             POST User               ${new_user}
    Status Should be        200                     ${response}

Duplicated Email
    ${payload}          Get Json                         signup.json
    POST User           ${payload['duplicated_user']}
    ${response}         POST User                        ${payload['duplicated_user']}
    Status Should be    409                              ${response}

Signup Attempt
    [Template]     Signup Attempt
    signup.json    empty_name        required name
    signup.json    empty_email       required email
    signup.json    empty_pwd         required password
    signup.json    without_name      required name
    signup.json    without_email     required email
    signup.json    without_pwd       required password
    signup.json    wrong_email       wrong email