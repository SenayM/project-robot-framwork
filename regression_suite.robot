***Settings***
Library                        Selenium2Library
Library                        OperatingSystem
Library                        String

Resource                        ./credentials/login_variables.robot
Resource                        ./pages-and-keywords/test_setup_and_teardown.robot
Resource                        ./pages-and-keywords/page_login.robot
Resource                        ./pages-and-keywords/page_dashboard.robot
Resource                        ./pages-and-keywords/user-pages/user_list_page_and_keywords.robot
Resource                        ./pages-and-keywords/user-pages/user_create_page_and_keywords.robot
Resource                        ./pages-and-keywords/bedroom-pages/bedroom_list_page_and_keywords.robot
Resource                        ./pages-and-keywords/bedroom-pages/bedroom_create_page_and_keywords.robot

Test setup                     Setup
Test teardown                  Teardown
***Test cases***
Test create bedroom
    Perform_login_as_admin_user
    navigate_to_bedroom_page_link_left
    Navigate_to_create_bedroom
    Create_new_Bedroom
    perform_logout
# Test create user
    # Perform_login_as_admin_user
    # navigate_to_user_page_link_left
    # Navigate_to_create_user_form
    # Create_new_admin_user
    # perform_logout
# Log in as admin Test Case
    # Perform_login_as_admin_user
    # #perform_logout
# Log in as normal Test Case
    # Perform_login_as_normal_user
    # perform_logout
    
# Test Dashboard
    # perform_login_as_admin_user
    # navigate_to_user_page_link_left
    # navigate_to_reservation_page_link_left
    # navigate_to_dasboard_page_link_left
    # navigate_to_client_page_link_left
    # navigate_to_bill_page_link_left
    # navigate_to_bedroom_page_link_left
    # navigate_to_dasboard_top_link 
    # perform_logout