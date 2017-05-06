*** Settings ***
Resource                             client_view_page_and_keywords.robot

*** Variables ***
${client_pg_label_on_page}                      List
${client_list_pg_button_view}                   xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[7]/a[1]

*** Keywords ***
navigate_to_client_view_pg    
    #Page should contain                ${client_pg_label_on_page}
    Click element                      ${client_list_pg_button_view}
    Wait until page contains           ${client_lable_on_pg_view}