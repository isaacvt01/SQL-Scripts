
-- With this command we deactivate the foreigns keys revision so that it does not give us an error.
SET FOREIGN_KEY_CHECKS = 0;

-- Delete Shipments table
DROP TABLE IF EXISTS shipments;

-- Delete Orders table
DROP TABLE IF EXISTS orders;

-- Delete Stores table
DROP TABLE IF EXISTS stores;

-- Delete Bikes table
DROP TABLE IF EXISTS bikes;


-- We activate it again when we finish deleting 
SET FOREIGN_KEY_CHECKS = 1;
