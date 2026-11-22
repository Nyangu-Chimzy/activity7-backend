require("dotenv").config();
const fs = require("fs");
const pool = require("./db");

(async () => {
  try {
    await pool.query(fs.readFileSync("schema.sql", "utf8"));
    await pool.query(fs.readFileSync("seed.sql", "utf8"));
    console.log("Database ready.");
  } catch (e) {
    console.error("Setup failed:", e.message);
  } finally {
    await pool.end();
  }
})();