*** Settings ***
Resource                                 client_view_page_and_keywords.robot
Resource                                 client_edit_page_and_keywords.robot

*** Variables ***
${client_pg_label_on_page}                List
${client_pg_btn_edit_client}              xpath=//*[@id="j_idt50"]/table/tbody/tr[1]/td[7]/a[2]
${client_list_pg_button_view}             xpath=//*[@id="j_idt50"]/table/tbody/tr[1]/td[7]/a[1]


*** Keywords ***
Navigate_to_edit_client
    Page should contain                   ${client_pg_label_on_page}     
    Click Element                         ${client_pg_btn_edit_client}   
    Page should contain                   ${client_edit_pg_lbl}

navigate_to_client_view_pg
    Click element                         ${client_list_pg_button_view}
    Wait until page contains              ${client_lable_on_pg_view}
