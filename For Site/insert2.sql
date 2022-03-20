clear screen;

drop table processor2;
create table processor2(pro_id number, name varchar2(50),price number);

drop table ram2;
create table ram2(ram_id number, name varchar2(50),price number);

drop table gpu2;
create table gpu2(gpu_id number, name varchar2(50),price number);

drop table motherboard2;
create table motherboard2(mobo_id number, name varchar2(50),price number);

drop table ssd2;
create table ssd2(ssd_id number, name varchar2(50),price number);













insert into processor2 values (7,'Intel Core i3, 9GEN ',10500);
insert into processor2 values (8,'AMD Ryzen 3, 3100 ',12500);
insert into processor2 values (9,'Intel Core i5, 8GEN ',14300);
insert into processor2 values (10,'AMD Ryzen 5, 1600 ',15100);
insert into processor2 values (11,'AMD Ryzen 7, 3700 ',28600);
insert into processor2 values (12,'Intel Core i7, 11GEN ',31000);
commit;


insert into ram2 values (7,'PNY 4GB DDR4, 2666Mhz ',2150);
insert into ram2 values (8,'Corsair Vengeance LPX 4GB DDR4, 2666Mhz ',2050);
insert into ram2 values (9,'Team 8GB DDR4, 3200Mhz ',3560);
insert into ram2 values (10,'GEIL 8GB DDR4, 3200Mhz ',3700);
insert into ram2 values (11,'HP 16GB DDR4, 3200Mhz ',6700);
insert into ram2 values (12,'ADATA RGB 16GB DDR4, 3200Mhz ',5300);
commit;


insert into gpu2 values (7,'Zotak GeForce GT 730, 2GB DDR3 ',7250);
insert into gpu2 values (8,'Gigabyte GeForce GT 730K, 2GB DDR3 ',7700);
insert into gpu2 values (9,'Asus GeForce GTX 1050Ti, 4GB GDDR5 ',24000);
insert into gpu2 values (10,'Colorful GeForce GTX 1050Ti, 4GB GDDR5 ',25500);
insert into gpu2 values (11,'Asus GeForce RTX 3050, 8GB GDDR6 ',51500);
insert into gpu2 values (12,'MSI Gaming GeForce RTX 3050, 8GB GDDR6 ',54600);
commit;


insert into motherboard2 values (7,'ASRock B450M-A PRO MAX AMD AM4 Motherboard',6500);
insert into motherboard2 values (8,'NZXT H310M M.2 9th Gen Micro ATX Motherboard',6900);
insert into motherboard2 values (9,'MSI B460M-A Intel 10th Gen Micro-ATX Motherboard',10200);
insert into motherboard2 values (10,'MSI B450M DS3H WIFI AMD Micro ATX Motherboard',10700);
insert into motherboard2 values (11,'ASRock B550 Plus DDR4 AMD AM4 ATX Motherboard',16300);
insert into motherboard2 values (12,'NZXT B660M-A DDR4 12th Gen MicroATX Motherboard',17800);
commit;


insert into ssd2 values (7,'PNY 120GB M.2 2280 SATA SSD',2080);
insert into ssd2 values (8,'Corsair 120GB 2.5" SSD',2100);
insert into ssd2 values (9,'HP 420S 240GB M.2 SSD',3640);
insert into ssd2 values (10,'Walton 256GB NVMe M.2 SSD',3250);
insert into ssd2 values (11,'MSI M.2 500GB PCIe NVMe Internal SSD',5050);
insert into ssd2 values (12,'Kingstone NVMe M.2 250GB SSD',5900);
commit;


select * from processor2;
select * from ram2;
select * from gpu2;
select * from motherboard2;
select * from ssd2;