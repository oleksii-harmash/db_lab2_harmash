INSERT INTO vendor(vendor_num, vendor_name) VALUES
	(434, 'Luxco-St Louis'),
	(65, 'Jim Beam Brands'),
	(330, 'Gemini Spirits'),
	(421, 'SAZERAC COMPANY  INC'),
	(192, 'Sidney Frank Importing Co.');
	
INSERT INTO description(item_num, item_desc, volume) VALUES
	(54444, 'Paramount Apricot Flavored Brandy', 375),
	(82636, 'Dekuyper Grape Pucker Schnapps', 750),
	(80458, 'Ryans Cream Liqueur', 1750),
	(69636, 'Dr. Mcgillicuddys Cherry Schnapps', 750),
	(65256, 'Jagermeister Liqueur', 750);
	
INSERT INTO store_location(zip_code, city) VALUES
	(50428, 'Clear Lake'),
	(51560, 'Oakland'),
	(52253, 'Lisbon'),
	(51632, 'Corning'),
	(52653, 'Wapello');
	
INSERT INTO store(store_name, zip_code, store_num, gps) VALUES
	('Quick Shop / Clear Lak', 50428, 3456, '(43.142868, -93.378772)'),
	('Rubacks Food Center', 51560, 2445, '(40.991951, -94.743093)'),
	('Brothers Market / Lisbon', 52253, 2856, '(41.173132, -91.188948)'),
	('Hy-Vee Food Store / Corning', 51632, 2656, '(41.538254, -90.599037)'),
	('Wapello Jack and Jill', 52653, 4125, '(42.75288, -92.795129)');
	
INSERT INTO sale(invoice, store_name, vendor_num, sale_date) VALUES
	('S24137900083', 'Quick Shop / Clear Lak', 434, '02-19-2015'),
	('S27519400019', 'Rubacks Food Center', 65, '08-25-2015'),
	('S22395800022', 'Brothers Market / Lisbon', 330, '11-17-2014'),
	('INV-06082600024', 'Hy-Vee Food Store / Corning', 421, '07-14-2017'),
	('S08806800029', 'Wapello Jack and Jill', 192, '11-07-2012');

INSERT INTO details(invoice, item_num, quantity, cost, retail) VALUES
	('S24137900083', 54444, 4, 3.55, 5.33),
	('S27519400019', 82636, 2, 6.30, 9.45),
	('S22395800022', 80458, 6, 10.54, 16.31),
	('INV-06082600024', 69636, 2, 8.66, 12.99),
	('S08806800029', 65256, 2, 12.04, 18.06);
