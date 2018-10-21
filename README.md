# How to install and run the Chatbot
## Run the client
1. Install [yarn](https://yarnpkg.com/lang/en/docs/install)
2. Run `yarn` from inside the "client/" folder
3. Run `yarn start`

The user interface will now open automatically in your preferred browser

## Run the server
1. Run `pip install -r requirements.txt` from the "server/" folder
    * Optional: use a virtual environment
2. Run `python3 server.py`

The server is now running

## Setup database
1. Navigate to the "chatbot_database/" folder
2. Run `mysql -u [username] -p chatbot < chatbot_final.sql` (mysql installation required)
3. Navigate to the Spider_dir folder
4. Run `sh csv_to_mysql.sh`

The database is now up to date.
