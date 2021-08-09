***Settings***
Documentation       Aqui teremos as KWs de ajuda

***Keywords***
Get Json
    [Arguments]     ${file_name}
    ${fixture}      Get File        ${EXECDIR}/resources/fixtures/${file_name}
    ${json}         Evaluate        json.loads($fixture)        json
    [Return]        ${json}
