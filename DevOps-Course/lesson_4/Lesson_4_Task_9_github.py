"""
Open any browser on "Github" website.
     https://github.com/
     Enter “Selenium” keyword in search textfield
     Press Enter to search (through code - of course).
"""
from time import sleep
from selenium_setup import open_page

url = "https://github.com/"
driver = open_page(url)
search_box = driver.find_element("name", "q")
search_box.send_keys("selenium")
search_box.submit()
sleep(30)
driver.quit()
