*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter is set to a specific value the value is updated accordingly
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  name=value  5
    Click Button  Aseta
    Page Should Contain  nappia painettu 5 kertaa
    Input Text  name=value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa