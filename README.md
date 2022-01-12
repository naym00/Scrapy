# Scrapy

This project is python based project. In this project i have scraped hotel information from ```https://www.kayak.co.in/``` website.

### Prerequisites
- [x] Install Python (recommended version 3.8)
- [x] Install XAMPP/WAMPP (recommended XAMPP)

### For Database
- [x] MySQL
- [x] Xampp

### Tools and Packages Used
- [x] Scrapy
- [x] MYSQL Connector
- [x] Fake-User-Generator
- [x] Python Virtual Environment



Database Creation
Step 1

    Create a database from XAMPP(localhost) named (mydb) and import the mydb.sql file from cloned folder.

CREATE DATABASE [IF NOT EXISTS] mydb;

Step 2

    Import the (mydb.sql) provided with the cloned folder into the database.

Project Setup
Step 1

    Please go to the folder where you want to install the application and open the Termial/CMD. Then type the following command and press enter

git clone https://github.com/Saklain-Tonmoy/Python_Assignment

Step 2

    After cloning please open the folder using cmd or VSCode, and run the following command to activate the Virtual Environment

source my-env/bin/activate

Step 3

    Then change the directory using the following command

cd Scrapy_Crawl

Step 4

    Install MYSQL Connector by running the following commandfor interacting with Database

python -m pip install mysql-connector-python

Step 5

    Install Fake User Generator for avoiding the blocking of bot Scrawling by running the following command

pip install scrapy-fake-useragent

Step 6

    After installing Fake-User_Generator, add the followings to the settings.py file

DOWNLOADER_MIDDLEWARES = {
    'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware': None,
    'scrapy.downloadermiddlewares.retry.RetryMiddleware': None,
    'scrapy_fake_useragent.middleware.RandomUserAgentMiddleware': 400,
    'scrapy_fake_useragent.middleware.RetryUserAgentMiddleware': 401,
}
FAKEUSERAGENT_PROVIDERS = [
    'scrapy_fake_useragent.providers.FakeUserAgentProvider',
    'scrapy_fake_useragent.providers.FakerProvider',
    'scrapy_fake_useragent.providers.FixedUserAgentProvider',
    'mypackage.providers.CustomProvider'
]
Step 7

    Finally, run the project using following command
scrapy crawl hotels







 

### How to run
- [x] Open Project Folder and run this command ```source venv/bin/activate```
- [x] Press 'Ctrl Shipt P' and then select "python select interpreter" and "python___64-bit('venv':venv)"
- [x] Install scrapy ```pip install scrapy```
- [x] Install Proxy Server ```pip install scrapy-fake-useragent``` 
- [x] Go to the project folder "postscrape" and run ```scrapy crawl posts```  
