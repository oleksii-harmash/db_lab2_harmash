CREATE TABLE sale(
	invoice 	VARCHAR(30) PRIMARY KEY,
	store_name 	VARCHAR(50) NOT NULL,
	vendor_num 	INT NOT NULL,
	sale_date 	DATE NOT NULL
);

CREATE TABLE details(
	invoice 	VARCHAR(50) PRIMARY KEY,
	item_num 	INT NOT NULL,
	quantity 	INT NOT NULL,
	cost 		DECIMAL(10, 2) NOT NULL,
	retail 		DECIMAL(10, 2) NOT NULL
);

CREATE TABLE store(
	store_name 	VARCHAR(50) PRIMARY KEY,
	zip_code 	INT NOT NULL,
	store_num 	INT NOT NULL,
	gps 		TEXT NOT NULL
);

CREATE TABLE store_location(
	zip_code 	INT PRIMARY KEY,
	city 		VARCHAR(50)
);

CREATE TABLE description(
	item_num 	INT PRIMARY KEY,
	item_desc 	VARCHAR(50) NOT NULL,
	volume 	INT NOT NULL,
);

CREATE TABLE vendor(
	vendor_num INT PRIMARY KEY,
	vendor_name VARCHAR(50) NOT NULL
);


ALTER TABLE details ADD CONSTRAINT FK_details
	FOREIGN KEY (invoice) REFERENCES sale(invoice);
ALTER TABLE details ADD CONSTRAINT FK_item_num 
	FOREIGN KEY (item_num) REFERENCES description(item_num);
	
ALTER TABLE sale ADD CONSTRAINT FK_store_name 
	FOREIGN KEY (store_name) REFERENCES store(store_name);
ALTER TABLE sale ADD CONSTRAINT FK_vendor_num 
	FOREIGN KEY (vendor_num) REFERENCES vendor(vendor_num);
	
ALTER TABLE store ADD CONSTRAINT FK_zip_code 
	FOREIGN KEY (zip_code) REFERENCES store_location(zip_code);
