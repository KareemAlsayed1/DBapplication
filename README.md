# DB application

## DB schema

![DB_schema](/schema.png)

### Installation

The application requires [SQLite]

First, you need to install Sqlite3 on your local machine using the following terminal command.

For MAC
```sh
$ brew install sqlite
```

#### Running the application

 - Go to the Folder directory
 - Open the termianl 
 - Go to the folder directory
 - Open Sqlite3 shell
 ```sh
$ sqlite3
```
- Inside the shell read the three DB files in the following order
 ```sh
sqlite> .read create.sql
```
 ```sh
sqlite> .read insert_data.sql
```
 ```sh
sqlite> .read query_data.sql
```

### Database Features

##### Transactions
I had used transactions mainly in the insert_data.sql file when I was selling any house. Transactions are so powerful in terms of doing that because every house sold, we need to ensure that a sequence of actions works. If one of these actions don't work, the whole transaction doesn't reflect in the database. For example, if we are selling a house, and the update command that changes the status from "POSTED" to "SOLD" fails, then we need to make sure the summary table didn't update. 

##### Data Normalization
I used that concept mainly when I was designing the database schema, which is visible in the picture above and create.sql file. I designed the database to be in the third form of normalization. For example, I made sure to reduce all the redundancy in the tables by creating "One to many" and "Many to Many" relationship tables. A good example of that is the Zipcodes table, which includes all the information about each Zipcode. If that table doesn't exist, the same information would be repeated everywhere. Also, I made sure that each column only holds one value, and there is no data repetition in the same table. For example, each agent can work for more than one office, so I create a middle table that indicates who is working where ("WorkingFor" table). 

##### indices
For boosting the performance of the queries, I have created some indices tables that determine specific relationships based on the queries provided. For example, I found that all the queries check the date when the house was sold. So, I create an index which connects the date with the index of the Sales table. That's a powerful idea because we are querying the same table every month, so ordering the table by the date would help us in getting their faster.