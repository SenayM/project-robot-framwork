*** Settings ***
Library                                     Collections
*** Variables ***
${bedroom_create_pg_lbl}                    Create New Bedroom
${bedroom_create_txtdescription}            xpath=//*[@id="description"]
${bedroom_create-txtfloor}                  xpath=//*[@id="floor"]
${bedroom_create-txtnumber}                 xpath=//*[@id="number"]
${bedroom_create-txtdailyprice}             xpath=//*[@id="priceDaily"]
${user_create-lstbedroomtatus}              xpath=//*[@id="bedroomStatusId"]
${user_create-lstbedroomtype}              xpath=//*[@id="typeBedroomId"]
${user_create-btnsave}                      xpath=//*[@id="j_idt50"]/a[1]

*** Keywords ***
Create_new_bedroom
    ${bedroom_discription}             Generate Random String                        12                
    ${bedroom_floor} =                 Generate Random String                        1                 123456789
    ${roomnumber_postfix} =            Generate Random String                        2                [NUMBERS]
    ${bedroom_number} =                Catenate      SEPARATOR=             ${bedroom_floor}         ${roomnumber_postfix}   
    ${bedroom_dailyprice}=              Generate Random String                    4            [NUMBERS]
    
    
    
    Page should contain                ${bedroom_create_pg_lbl} 
    Input text                         ${bedroom_create_txtdescription}            ${bedroom_discription}
    Input text                         ${bedroom_create-txtfloor}                  ${bedroom_floor}
    Input text                         ${bedroom_create-txtnumber}                 ${bedroom_number}
    Input text                         ${bedroom_create-txtdailyprice}             ${bedroom_dailyprice}
    
    # Click element                      xpath=//*[@id="j_idt50:clientId"]/option[7]
    # Click element                      ${user_create-lstuserstatus} 
    # Click element                      xpath=//*[@id="j_idt50:userStatusId"]/option[2]
   
    # Page should contain element        ${user_create-btnsave}
    # Click element                      ${user_create-btnsave} 
    Sleep                                3
