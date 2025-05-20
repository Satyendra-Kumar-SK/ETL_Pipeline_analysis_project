## Gans Data Analyst Project: Web Scraping & SQL Database Creation
# About This Project
This project was my introduction to the world of web scraping, APIs, and SQL database creation. The setup is that I’m hired by a fictional e-scooter rental company called Gans. They want me to gather data about when potential customers are arriving by plane in three German cities — Berlin, Hamburg, and Munich — and also pull weather info to help decide where to place their scooters and when to offer discounts or incentives for moving scooters around.

It’s a cool mix of scraping data from websites, working with APIs, organizing everything into a database, and using Python to automate the whole thing.

## Tools & Technologies Used
Python libraries: BeautifulSoup & requests for scraping Wikipedia pages, pandas for data management

Environment: Jupyter Lab running in Anaconda

Database: MySQL, connected via SQLAlchemy and PyMySQL

Date & Time: pytz and datetime for handling time zones and dates

Extras: lat-lon-parser to convert coordinates into decimal format

## What I Learned
How to send requests to websites and read their HTML

Navigating through nested HTML tags to extract specific data

Using loops and functions to automate scraping across multiple cities

Connecting Python to a MySQL database and moving data back and forth seamlessly

Working with APIs to retrieve dynamic data

Handling date and time data for better timestamping

It felt pretty empowering to automate data extraction and integrate everything smoothly into a database. The whole process gave me a much clearer picture of how real-world data collection and management work.

## Challenges & How I Tackled Them
Functions are super useful but can be tricky when they don’t behave as expected. I found breaking down the code into smaller parts and running those independently really helped isolate issues. Adding print statements as checkpoints in the code was a lifesaver. And of course, my instructor Cintia was amazing — she guided me patiently whenever I got stuck. 
