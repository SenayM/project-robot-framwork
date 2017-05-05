*** Settings ***
Resource                                  client_edit_page_and_keywords.robot
*** Variables ***
${client_pg_label_on_page}                List
${client_pg_btn_edit_client}              xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[7]/a[2]

*** Keywords ***
Navigate_to_edit_client
    Page should contain                   ${client_pg_label_on_page}     
    Click Element                         ${client_pg_btn_edit_client}   
    Page should contain                   ${client_edit_pg_lbl}