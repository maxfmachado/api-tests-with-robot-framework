***Settings***
Documentation       Implementacao da Rota /signup

***Keywords***
POST User
    [Arguments]     ${payload}

    ${response}     POST
    ...             ${base_url}/signup
    ...             json=${payload}
    ...             expected_status=any

    [Return]        ${response}

Signup Attempt
    [Arguments]         ${json_file}    ${json_obj}                  ${message}
    ${payload}          Get Json        ${json_file}
    ${response}         POST User       ${payload['${json_obj}']}
    Status Should be    412             ${response}
    Should be Equal     ${message}      ${response.json()}[error]