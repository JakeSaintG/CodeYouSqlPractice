import sqlite, { Statement } from 'better-sqlite3';
import fs from 'fs';

/*
Note: This is a simplified understanding of how DB state management could be implemented.
This implementation assumes that this node instance will hold onto the connection (cache this module), and that
the variable dbContext will always be in memory for node. This is fine for learning, but will likely
cause issues if you ever need to scale up!
*/
let dbContext: sqlite.Database;

// Put the .db (database) file in the root directory so students can more easily see it. 
// TODO: Do I want to commit the blank .db file? Yes? I would need to be clever about checking it.
const FILE_LOCATION = './../CatDb.db';

export const init = () => { 
    dbContext = new sqlite(FILE_LOCATION);
};

export const deleteDbFile = () => {
    fs.unlink(FILE_LOCATION, (err) => {
        if (err) throw err;
        console.log('Deleting old data.')
    })
}

export const closeDbConnection = () => {
    dbContext.close();
}

export const runDropAndReset = () => {
    const dropAndResetSqlFile = fs.readFileSync('./../SQLite_Exercises/Utils/DropAndReset.sql', 'utf8');

    /*
        better-sqlite3 cannot run multiple statements at once. In a real-world use case
        this is a VERY desired behavior for safety. Since there are multiple statements 
        per file, we need to break them up and run them one at a time.
    */
    const dropAndResetQueries = dropAndResetSqlFile.split('-- QUERY:');
    
    dropAndResetQueries.forEach((queryString: string) => {
        runAsTransaction( queryString );
    })
}

const assertDbExists = () => {
    if (!fs.existsSync(FILE_LOCATION)) {
        throw new Error(
            `Database file '${FILE_LOCATION}' not in place.`
        );
    }
};

const runAsTransaction = (queryString: string) => {
    const begin = dbContext.prepare('BEGIN TRANSACTION');
    const commit = dbContext.prepare('COMMIT');
    const rollback = dbContext.prepare('ROLLBACK');

    try {
        begin.run();
        dbContext.prepare(queryString).run();
        commit.run();
    } 
    catch (error: unknown) {
        if (dbContext.inTransaction) rollback.run();
        
        // There's a TON of comments in the SQL Exercise files we'll ignore errors involving "no statements".
        if (error instanceof Error && !error.message.includes('The supplied SQL string contains no statements')) {
            throw error;
        }
    }
}