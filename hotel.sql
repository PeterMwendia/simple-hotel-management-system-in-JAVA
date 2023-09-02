BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "roomType" (
	"type"	TEXT,
	"price"	INTEGER,
	PRIMARY KEY("type")
);
CREATE TABLE IF NOT EXISTS "food" (
	"food_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"price"	INTEGER NOT NULL,
	PRIMARY KEY("food_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "item" (
	"item_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"description"	TEXT,
	"price"	INTEGER NOT NULL,
	PRIMARY KEY("item_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "userInfo" (
	"user_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"address"	TEXT,
	"phone"	TEXT,
	"type"	TEXT NOT NULL DEFAULT 'regular',
	PRIMARY KEY("user_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "orderItem" (
	"order_id"	INTEGER,
	"booking_id"	INTEGER NOT NULL,
	"item_food"	INTEGER,
	"price"	INTEGER,
	"quantity"	INTEGER,
	"total"	INTEGER,
	PRIMARY KEY("order_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "booking" (
	"booking_id"	INTEGER,
	"customer_id"	INTEGER,
	"booking_room"	TEXT,
	"guests"	INTEGER,
	"check_in"	INTEGER,
	"check_out"	INTEGER,
	"booking_type"	TEXT,
	"has_checked_out"	INTEGER,
	PRIMARY KEY("booking_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "room" (
	"room_id"	INTEGER,
	"room_no"	TEXT NOT NULL,
	"bed_number"	INTEGER,
	"tv"	TEXT,
	"wifi"	TEXT,
	"gizer"	TEXT,
	"phone"	TEXT,
	"room_class"	TEXT NOT NULL,
        "meal_id" INTEGER,
	PRIMARY KEY("room_id" AUTOINCREMENT)
);
INSERT INTO "roomType" ("type","price") VALUES ('deluxe',3000),
 ('Standard',1500),
 ('Suite',5000);
INSERT INTO "food" ("food_id","name","price") VALUES (1,'burger',100);
INSERT INTO "item" ("item_id","name","description","price") VALUES (2,'Swiming','Get access to Swimming for 1 hour',200);
INSERT INTO "userInfo" ("user_id","name","address","phone","type") VALUES (4,'Faysal','Wari','01913','regular'),
 (26,'Akib Anwar','Rajshahi','120540342','premium'),
 (27,'Rakibul Islam','Banani','123214325','regular'),
 (28,'Nahian','Farmgate','112312','null'),
 (29,'Samiul Islam','Motijheel','123456','null'),
 (30,'sid','boshundhora','12321321','null'),
 (31,'rizwan','mogbazar','34523','null'),
 (33,'sunnat','donia','5465','null'),
 (34,'tahmid','mmmm','12321','null'),
 (35,'murad','nooooosfda','3242341','null'),
 (36,'Tomal','dsf','321','null'),
 (37,'sazzu','fsda','32121','null'),
 (39,'Md Babul','nobabStreet','123456','null'),
 (40,'parshi','narinda','12211','null'),
 (42,'Tony','California','9998876665','null');
INSERT INTO "orderItem" ("order_id","booking_id","item_food","price","quantity","total") VALUES (1,25,'burger',100,2,200),
 (3,27,'burger',100,2,200),
 (5,28,'A101',1500,0,0),
 (6,27,'A401',1500,2,3000),
 (7,26,'A301',1500,4,6000),
 (8,25,'A201',1500,4,6000),
 (9,24,'A101',1500,7,10500),
 (10,29,'A201',1500,2,3000),
 (11,28,'A101',1500,0,0),
 (12,26,'A301',1500,4,6000),
 (13,27,'A401',1500,1,1500),
 (14,25,'A201',1500,4,6000),
 (15,31,'burger',100,3,300),
 (16,31,'A501',1500,2,3000);
INSERT INTO "booking" ("booking_id","customer_id","booking_room","guests","check_in","check_out","booking_type","has_checked_out") VALUES (24,4,'A101',2,1439537365,1440173817,'On Spot',0),
 (25,26,'A201',2,1439796741,1440174705,'On Spot',1),
 (26,39,'A301',2,1439796768,1440174486,'On Spot',1),
 (27,35,'A401',2,1440315213,1440174554,'On Spot',1),
 (28,34,'A101',2,1440180748,1440174176,'On Spot',1),
 (29,40,'A201',2,1440400451,1440173969,'On Spot',1),
 (30,26,'A101',3,1469332731,1469505609,'On Spot',0),
 (31,4,'A501',2,1469419721,1469160671,'On Spot',1),
 (32,42,'A101',3,1548423207,1548682588,'Paid reservation',0),
 (33,42,'A201',3,1548423207,1548682588,'Paid reservation',0),
 (34,42,'A301',3,1548423207,1548682588,'Paid reservation',0);
INSERT INTO "room" ("room_id","room_no","bed_number","tv","wifi","gizer","phone","room_class", "meal_id") VALUES (13,'A101',2,'true','true','false','false','Standard'),
 (14,'A201',2,'true','true','false','false','Standard'),
 (15,'A301',2,'true','true','false','false','Standard'),
 (16,'A401',2,'true','true','false','false','Standard'),
 (17,'A501',2,'true','true','false','false','Standard');
COMMIT;
