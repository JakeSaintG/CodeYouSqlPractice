# demo

- meant to be an EXTREMELY simple excericse. 
- will not be covering best code practices like check-lock-check, optimistic vs pessimistic concurrency, read committed etc

## DB Browser for SQLite
### Installation and download
- windows
    - https://sqlitebrowser.org
    - msi
    - agree to terms
    - Don't be too concerned about SQLCipher
        - see img
    - choose install location
    - install

### How To:
We won't be diving too hard into the features of this tool. For our purposes, we just want to view and query the SQLite database. 

Don't worry too much about creating the database with the tool. There's code for that.

Tool basics:
- Database Structure
    - Refresh
    - View columns
- Execute SQL
    - Where we will be spending the bulk of our time
    - new table
    - execute
        - highlighting


**That being said, DB Browser for SQLite doesn't immediately save things to the database. It's important to press "Write Changes" after every query to ensure your changes are persisted to .db file.**
- db-journal file seems to keep track of those changes

No cats were harmed in the making of this demo.