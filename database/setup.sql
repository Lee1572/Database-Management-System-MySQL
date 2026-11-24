-- Run this file from the project root using the MySQL command-line client.
-- Example: mysql -u root -p < database/setup.sql
-- The SOURCE paths are relative to the MySQL client's working directory.

SOURCE database/schema.sql;
SOURCE database/sample-data.sql;
SOURCE database/constraints-and-indexes.sql;

SELECT 'Guitar Shop database setup completed.' AS status;
