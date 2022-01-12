# Scrapy

This project is python based project. In this project i have scraped hotel information from ```https://www.kayak.co.in/``` website.

### Prerequisites
- [x] Install Python (recommended version 3.8.10)

### Tools and Packages Used
- [x] Scrapy
- [x] MYSQL Connector
- [x] Fake-User-Generator
- [x] Python Virtual Environment

### For Database
- [x] MySQL
- [x] Xampp

### After Install Xampp -> Start Xampp
- [x] From Terminal ```sudo /opt/lampp/lampp start```
- [x] From Terminal ```sudo /opt/lampp/manager-linux-x64.run```

### Database Creation
- [x] Create Database named in 'hotel_data'
- [x] Import 'hotel_information.sql' which is in 'spiders' folder.

### Project Setup
- [x] Go to the project folder which is 'Scrapy'
- [x] python3 -m venv venv
- [x] source venv/bin/activate
- [x] pip install scrapy
- [x] cd postscrape
- [x] pip install scrapy-fake-useragent
- [x] pip install mysql-connector-python
- [x] run the project ```scrapy crawl posts```
