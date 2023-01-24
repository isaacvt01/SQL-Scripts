
-- Insert data into Stores table
INSERT INTO stores (store_name, city) VALUES
('PalmaBike', 'Palma'),
('Jaume Bikes', 'IES Manacor'),
('Alcudia Bikes', 'Alcudia');

-- Insert data in Bikes table
INSERT INTO bikes (bike_name, store_id, usage, brand) VALUES
('Bike 1', 1, 'mountain', 'ORBEA'),
('Bike 2', 1, 'mountain', 'CANYON'),
('Bike 3', 2, 'racing', 'BMC'),
('Bike 4', 3, 'urban', 'TRECK'),
('Bike 5', 3, 'urban', 'ORBEA');

-- Insert data into Orders table
INSERT INTO orders (bike_id, order_date) VALUES
(1, '2022-01-01'),
(2, '2022-02-01'),
(3, '2022-03-01'),
(4, '2022-04-01'),
(5, '2022-05-01');

-- Insert data in Shipments table
INSERT INTO shipments (order_id, shipment_date) VALUES
(1, '2022-01-15'),
(2, '2022-02-15'),
(3, '2022-03-15'),
(4, '2022-04-15'),
(5, '2022-05-15');
