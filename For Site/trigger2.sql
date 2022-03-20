SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER trig 
AFTER INSERT 
ON processor2
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Value inserted on processor1 Database');
END;
/

CREATE OR REPLACE TRIGGER trig2 
AFTER INSERT 
ON ram2
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Value inserted on ram1 Database');
END;
/

CREATE OR REPLACE TRIGGER trig3 
AFTER INSERT 
ON gpu2
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Value inserted on gpu1 Database');
END;
/

CREATE OR REPLACE TRIGGER trig4 
AFTER INSERT 
ON motherboard2
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Value inserted on motherboard1 Database');
END;
/

CREATE OR REPLACE TRIGGER trig5 
AFTER INSERT 
ON ssd2
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Value inserted on ssd1 Database');
END;
/
