***Settings***
Documentation       Implementacao da Rota /sessions

***Keywords***
POST Login
    [Arguments]     ${payload}

    ${response}     POST
    ...             ${base_url}/sessions
    ...             json=${payload}
    ...             expected_status=any

    [Return]        ${response}

Login Attempt
    [Arguments]         ${json_file}      ${json_obj}                  ${status_code}    ${message}
    ${payload}          Get Json          ${json_file}
    ${response}         POST Login        ${payload['${json_obj}']}
    Status Should Be    ${status_code}    ${response}
    Should be Equal     ${message}        ${response.json()}[error]