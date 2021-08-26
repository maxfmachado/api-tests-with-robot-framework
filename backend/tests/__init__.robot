***Settings***
Documentation    Seeds
Resource         ${EXECDIR}/resources/base.robot

Suite Setup      Create Users

***Keywords***
Create Users
    ${users}    Get Json    users.json

    FOR          ${user}    IN    @{users}
        POST User    ${user}
    END