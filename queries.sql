
-- Get the name of all the bicycles in a particular shop.
SELECT bike_name FROM bikes
WHERE store_id = (SELECT store_id FROM stores WHERE store_name = 'PalmaBike');

-- Get the name of the shops in the city "Alcudia":
SELECT store_name FROM stores WHERE city='Alcudia';

-- Obtain the name of bicycles for urban use:
SELECT bike_name FROM bikes WHERE `usage` = 'urban';

-- Obtain the name of the "ORBEA" branded bicycles:
SELECT bike_name FROM bikes WHERE brand = 'ORBEA';

-- Get the number of shipments made on a specific date:
SELECT COUNT(*) FROM shipments WHERE shipment_date = '2022-04-15';




