***Settings***
Documentation    Add Equipos Test

Resource    ${EXECDIR}/resources/base.robot

***Test Cases***
Add New Equipo
    ${token}     Get Token    max@gmail.com    mudar123
    ${equipo}    Get Json     fender.json

    Remove Equipo    ${equipo}[payload][name]

    ${response}    POST Equipo    ${equipo}    ${token}

    Status Should be    200    ${response}

Get Unique Equipo
# Dado que tenho um equipo cadastrado
    ${token}     Get Token    max@gmail.com         mudar123
    ${equipo}    Get Json     piano_de_mesa.json

    Remove Equipo    ${equipo}[payload][name]
    ${result}        POST Equipo                 ${equipo}                ${token}
    ${equipo_id}     Set Variable                ${result.json()}[_id]

# Quando eu faco uma requisicao GET para a rota Equipos
    ${response}    Get Equipo    ${token}    ${equipo_id}

# Entao o codigo de status deve ser 200
    Status should be    200                             ${response}
    Should be Equal     ${equipo}[payload][name]        ${result.json()}[name]
    Should be Equal     ${equipo}[payload][category]    ${result.json()}[category]
    Should be Equal     ${equipo}[payload][price]       ${result.json()}[price]

Equipo Not Found
    ${equipo_id}        Get Mongo Id
    ${token}            Get Token       max@gmail.com    mudar123
    ${response}         Get Equipo      ${token}         ${equipo_id}
    Status Should be    404             ${response}

Delete a Equipo
    ${token}     Get Token    max@gmail.com    mudar123
    ${equipo}    Get Json     violino.json

    Remove Equipo    ${equipo}[payload][name]
    ${result}        POST Equipo                 ${equipo}                ${token}
    ${equipo_id}     Set Variable                ${result.json()}[_id]

    ${response_delete}    Delete Equipo    ${token}              ${equipo_id}
    Status should be      204              ${response_delete}

    ${response_get}     Get Equipo    ${token}           ${equipo_id}
    Status should be    404           ${response_get}

Get Equipo List
    ${token}    Get Token    max@gmail.com    mudar123

    ${list}     Get Json    equipos.json

    FOR     ${item}     IN      @{list}
        Remove Equipo    ${item}[payload][name]
        POST Equipo      ${item}     ${token}
    END

    ${response}         Get Equipos    ${token}
    Status should be    200            ${response}

    ${total}          Get Length      ${response.json()}
    Should be True    ${total} > 0