***Settings***
Documentation    Aqui teremos as KWs de ajuda

***Keywords***
Get Json
    [Arguments]    ${file_name}
    ${fixture}     Get File        ${EXECDIR}/resources/fixtures/${file_name}
    ${json}        Evaluate        json.loads($fixture)                          json
    [Return]       ${json}

Get Token
    [Arguments]    ${email}    ${password}

    &{payload}       Create Dictionary    email=${email}                    password=${password}
    ${response}      POST Login           ${payload}
    ${user_token}    Set Variable         ${response.json()}[user_token]

    [Return]    ${user_token}
