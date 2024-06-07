DROP TYPE IF EXISTS BRAND;
DROP TYPE IF EXISTS TIPURI_TELEFOANE;

CREATE TYPE BRAND AS ENUM ( 'Samsung', 'Xiaomi', 'Apple', 'Motorola', 'Huawei','Nokia');
CREATE TYPE TIPURI_TELEFOANE AS ENUM ('Smartphone', 'Clasic');


CREATE TABLE IF NOT EXISTS prajituri (
   id serial PRIMARY KEY,
   nume VARCHAR(50) UNIQUE NOT NULL,
   descriere TEXT,
   pret NUMERIC(8,2) NOT NULL,
   memorie INT NOT NULL CHECK (memorie>=0),
   TIP_TELEFON TIPURI_TELEFOANE,
   culori VARCHAR NOT NULL,
   brand BRAND,
   specificatii VARCHAR [], --pot sa nu fie specificare deci nu punem NOT NULL
   resigilare BOOLEAN NOT NULL DEFAULT FALSE,
   imagine VARCHAR(300),
   data_adaugare TIMESTAMP DEFAULT current_timestamp
);


INSERT into prajituri (nume,descriere,pret, memorie, culori, TIP_TELEFON, brand, specificatii, resigilare, imagine) VALUES 
('Samsung Galaxy A35', 'Telefon Samsung Galaxy A35 5G,128GB,6GB RAM, Dual SIM, Awesome Navy', 1350 , 128, 'Negru', 'Smartphone','Samsung','{"Sim: Nano SIM + eSIM","Retea 2G :  GSM850, GSM900, DCS1800,PCS1900","RETEA: 5G","Sistem de operare: Android","Procesor: Exynos 1280"}', False, 'Samsung Galaxy A35.jpg'),
('Samsung Galaxy A55', 'Telefon SAMSUNG Galaxy A55 5G, 128GB, 8GB RAM, Dual SIM, Awesome Navy', 2000 , 128, 'Negru', 'Smartphone','Samsung','{"Sim: Nano SIM + eSIM","Retea 2G :  GSM850, GSM900, DCS1800,PCS1900","RETEA: 5G","Sistem de operare: Android","Procesor: Exinos 1480"}', False, 'Samsung Galaxy A.jpg'),

('Xiaomi 12X', 'Telefon XIAOMI 12X 5G, 128GB, 8GB RAM, Dual SIM, Blue', 2072.64 , 128, 'Blue', 'Smartphone','Xiaomi','{"Sim: Nano SIM","Retea 2G :  GSM850 900 1800 1900","RETEA: 5G","Sistem de operare: Android","Procesor:Snapdragon 870 7nm, Kryo 585 CPU pana la 3.2GHz"}', False, 'Xiaomi 12X.jpg'),
('Xiaomi Redmi Note 13', 'Telefon XIAOMI Redmi Note 13, 128GB, 6GB RAM, Dual Sim, Green', 880 , 128, 'Green', 'Smartphone','Xiaomi','{"Sim: Nano SIM","Retea 2G : 2,3,5,8","RETEA: 4G","Sistem de operare: Android","Procesor:Qualcomm Snapdragon 685 6nm"}', False, 'Xiaomi Redmi Note13.jpg'),

('Apple iPhone 11', 'Telefon APPLE iPhone 11, 128GB, White', 2550 , 128, 'Alb', 'Smartphone','Apple','{"Sim: Nano SIM","Retea 2G: 	GSM/EDGE (850, 900, 1800, 1900 MHz)","RETEA: 4G","Sistem de operare: iOS","Procesor:A13 Bionic chip, Neural Engine Generatia a treia"}', False, 'Apple iPhone11.jpg'),
('Apple iPhone 15 5G', 'Telefon APPLE iPhone 15 5G, 256GB, Pink', 4750 , 256, 'Roz', 'Smartphone','Apple','{"Sim: Nano SIM / eSIM","RETEA: 5G","Sistem de operare: iOS","Procesor:	A16 Bionic chip, 6‑core CPU with 2 performance and 4 efficiency cores, 16‑core Neural Engine"}', False, 'Apple iPhone15 5G.jpg'),

('Motorola Moto G72', 'Telefon MOTOROLA Moto G72, 128GB, 8GB RAM, Dual SIM, Meteorite Black', 800 , 128, 'Negru', 'Smartphone','Motorola','{"Sim:Nano SIM","RETEA: 4G","Sistem de operare: Android","Procesor:	MediaTek Helio G99"}', False, 'Motorola Moto G72.jpg'),
('Motorola Edge 50 Pro 5G', 'Telefon MOTOROLA Edge 50 Pro 5G, 512GB, 12GB RAM, Dual SIM, Moonlight Pearl', 2999.9 , 512, 'Argintiu', 'Smartphone','Motorola','{"Sim:Nano SIM + eSIM","Retea 2G :B2,3,5,8","RETEA: 5G","Sistem de operare: Android","Procesor:	Snapdragon 7 Gen 3 Mobile Platform, Qualcomm Kryo"}', True, 'Motorola Edge 50 Pro5G.jpg'),

('Huawei P60 Pro', 'Telefon HUAWEI P60 Pro, 256GB, 8GB RAM, Dual SIM, Black', 3500 , 256, 'Negru', 'Smartphone','Huawei','{"Sim: Nano SIM","RETEA: 4G","Sistem de operare: 	Harmony","Procesor:Snapdragon 8+ Gen 1 4G Mobile Platform"}', True, 'Huawei P60 Pro.jpg'),
('Huawei nova 12 SE', 'Telefon HUAWEI nova 12 SE, 256GB, 8GB RAM, Dual SIM, Green', 1500 , 25628, 'Verde', 'Smartphone','Huawei','{"Sim: Nano SIM","Retea 2G:GSM: Bands 2, 3, 5, 8 (850, 900, 1800, 1900 MHz)","RETEA: 4G","Sistem de operare: Android","Procesor:Qualcomm Snapdragon 680"}', False, 'Huawei nova 12 SE.jpg'),

('Nokia C32', 'Telefon NOKIA C32, 64GB, 3GB RAM, Dual SIM, Charcoal', 450 , 64, 'Negru', 'Smartphone','Nokia','{"Sim: Nano SIM","Retea 2G :	850, 900, 1800, 1900 MHz","RETEA: 4G","Sistem de operare: Android","Procesor:	Unisoc SC9863A (28nm)"}', False, 'Nokia C32.jpg'),
('Nokia XR20', 'Telefon NOKIA XR20, 128GB, 6GB RAM, Dual SIM, Ultra Blue', 1300 , 128, 'Blue', 'Smartphone','Nokia','{"Sim: Nano SIM","Retea 2G:GSM850, 900, 1800, 1900","RETEA: 5G","Sistem de operare: Android","Procesor:Qualcomm Snapdragon 480 5G"}', True, 'Nokia XR20.jpg')