clear screen;

drop table processor1;
create table processor1(pro_id number, name varchar2(50),price number);

drop table ram1;
create table ram1(ram_id number, name varchar2(50),price number);

drop table gpu1;
create table gpu1(gpu_id number, name varchar2(50),price number);

drop table motherboard1;
create table motherboard1(mobo_id number, name varchar2(50),price number);

drop table ssd1;
create table ssd1(ssd_id number, name varchar2(50),price number);



insert into processor1 values (1,'Intel Core i3, 10GEN ',11000);
insert into processor1 values (2,'AMD Ryzen 3, 3300X   ',13000);
insert into processor1 values (3,'Intel Core i5, 10GEN ',14800);
insert into processor1 values (4,'AMD Ryzen 5, 1600X   ',15000);
insert into processor1 values (5,'AMD Ryzen 7, 3700X   ',28000);
insert into processor1 values (6,'Intel Core i7, 10GEN ',29800);
commit;


insert into ram1 values (1,'Transcend 4GB DDR4, 2666Mhz                       ',2100);
insert into ram1 values (2,'Corsair Vengeance LPX 4GB DDR4, 2400Mhz           ',2200);
insert into ram1 values (3,'Transcend 8GB DDR4, 3200Mhz                       ',3500);
insert into ram1 values (4,'Corsair Vengeance LPX 8GB DDR4, 3200Mhz           ',3500);
insert into ram1 values (5,'G.Skill Trident Z 16GB DDR4, 3200Mhz              ',6900);
insert into ram1 values (6,'Corsair Dominator Platinum RGB 16GB DDR4, 3200Mhz ',5600);
commit;


insert into gpu1 values (1,'Gigabyte GeForce GT 730, 2GB DDR3        ',7150);
insert into gpu1 values (2,'Colorful GeForce GT 730K, 2GB DDR3       ',7200);
insert into gpu1 values (3,'Colorful GeForce GTX 1050Ti, 4GB GDDR5   ',24000);
insert into gpu1 values (4,'Gigabyte GeForce GTX 1050Ti, 4GB GDDR5   ',25500);
insert into gpu1 values (5,'Gigabyte GeForce RTX 3050, 8GB GDDR6     ',51000);
insert into gpu1 values (6,'Zotac Gaming GeForce RTX 3050, 8GB GDDR6 ',54000);
commit;


insert into motherboard1 values (1,'MSI B450M-A PRO MAX AMD AM4 Motherboard           ',6700);
insert into motherboard1 values (2,'Gigabyte H310M M.2 9th Gen Micro ATX Motherboard  ',6700);
insert into motherboard1 values (3,'Asus B460M-A Intel 10th Gen Micro-ATX Motherboard ',10800);
insert into motherboard1 values (4,'Gigabyte B450M DS3H WIFI AMD Micro ATX Motherboard',10900);
insert into motherboard1 values (5,'ASUS B550 Plus DDR4 AMD AM4 ATX Motherboard       ',15600);
insert into motherboard1 values (6,'MSI B660M-A DDR4 12th Gen MicroATX Motherboard    ',15700);
commit;


insert into ssd1 values (1,'Transcend 820s 120GB M.2 2280 SATA SSD      ',2050);
insert into ssd1 values (2,'HP S700 120GB 2.5" SSD (Solid State Drive)  ',2200);
insert into ssd1 values (3,'Transcend 420S 240GB M.2 SSD                ',3580);
insert into ssd1 values (4,'Gigabyte 256GB NVMe M.2 SSD                 ',3930);
insert into ssd1 values (5,'HP EX900 M.2 500GB PCIe NVMe Internal SSD   ',5520);
insert into ssd1 values (6,'Samsung 970 EVO Plus NVMe M.2 250GB SSD     ',5200);
commit;



CREATE OR REPLACE VIEW processor as(select * from processor1 union select * from processor2@site1);

CREATE OR REPLACE VIEW ram as(select * from ram1 union select * from ram2@site1);

CREATE OR REPLACE VIEW gpu as(select * from gpu1 union select * from gpu2@site1);

CREATE OR REPLACE VIEW motherboard as(select * from motherboard1 union select * from motherboard2@site1);

CREATE OR REPLACE VIEW ssd as(select * from ssd1 union select * from ssd2@site1);



select * from processor;
select * from ram;
select * from gpu;
select * from motherboard;
select * from ssd;

