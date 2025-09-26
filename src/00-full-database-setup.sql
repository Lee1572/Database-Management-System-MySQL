-- Full Database Setup
-- Run this file to recreate the entire database

SOURCE 01-create-database.sql;
SOURCE 02-create-tables.sql;
SOURCE 03-insert-sample-data.sql;

-- Display confirmation
SELECT 'Database setup completed successfully!' as status;