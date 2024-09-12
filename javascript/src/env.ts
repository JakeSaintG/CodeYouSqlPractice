import dotenv from 'dotenv';

// Get the configurable port from the .env file
dotenv.config();

const PORT: number = Number(process.env.PORT) || 8000;
console.log(PORT)

export const Env = {
    PORT,
} as const;