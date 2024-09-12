import sqlite from 'better-sqlite3';
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

export const setDbContext = () => {
    dbContext = new sqlite(FILE_LOCATION);
};

export const init = (
    // { defaultData }: { defaultData: any[] } //TODO: ANY; also pass something in
) => { 
    console.log('settin')
    if (!fs.existsSync(FILE_LOCATION)) {
        setDbContext();
        // createAndPopulateContactsTable(defaultData);
    } else {
        setDbContext();
    }
};

const assertDbExists = () => {
    if (!fs.existsSync(FILE_LOCATION)) {
        throw new Error(
            `Database file '${FILE_LOCATION}' not in place. POST to the reset endpoint, restart server, or replace files to proceed.`
        );
    }
};