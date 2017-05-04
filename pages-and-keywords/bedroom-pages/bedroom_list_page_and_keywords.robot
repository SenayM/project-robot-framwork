
*** Settings ***
Resource                                     bedroom_create_page_and_keywords.robot

*** Variables ***
${bedroom_pg_label_on_page}                      List
${bedroom_pg_btn_create_newbedroom}              xpath=//*[@id="j_idt49"]/a[1]


*** Keywords ***
Navigate_to_create_bedroom
    page should contain                   ${bedroom_pg_label_on_page}
    Click element                         ${bedroom_pg_btn_create_newbedroom} 
    Page should contain                   ${bedroom_create_pg_lbl} 