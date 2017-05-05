
*** Settings ***
Resource                                  bedroom_create_page_and_keywords.robot
Resource                                  bedroom_edit_page_and_keywords.robot
*** Variables ***
${bedroom_pg_label_on_page}               List
${bedroom_pg_btn_create_newbedroom}       xpath=//*[@id="j_idt49"]/a[1]
${bedroom_list_first_id}                  xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[1]
${bedroom_list_first_id_no}               xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[1]
${bedroom_pg_btn_edit_bedroom}            xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[8]/a[2]
*** Keywords ***
# Set_bedroom_id
    # ${temp}=                            Get text        ${bedroom_list_first_id_no}
    # Set suite variable       ${bedroom_list_first_id_no}           ${temp}                   
Navigate_to_create_bedroom
    page should contain                   ${bedroom_pg_label_on_page}
    Click element                         ${bedroom_pg_btn_create_newbedroom} 
    Page should contain                   ${bedroom_create_pg_lbl} 
    
Navigate_to_edit_bedroom
    page should contain                   ${bedroom_pg_label_on_page}
    Click element                         ${bedroom_pg_btn_edit_bedroom} 
    Page should contain                   ${bedroom_edit_pg_lbl}  