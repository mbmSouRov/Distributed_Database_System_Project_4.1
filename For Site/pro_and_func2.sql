SET SERVEROUTPUT ON;
SET VERIFY OFF;
clear screen;

CREATE OR REPLACE PACKAGE components AS
	PROCEDURE show_processor(i in number);
	PROCEDURE show_ram(i in number);
	PROCEDURE show_gpu(i in number);
	PROCEDURE show_motherboard(i in number);
	PROCEDURE show_ssd(i in number);
	
	FUNCTION sumation(S1 IN number,S2 IN number,S3 IN number,S4 IN number,S5 IN number)
	RETURN NUMBER;
	
END components;
/


CREATE OR REPLACE PACKAGE BODY components AS

	-------------------------------------------------------------------------------------------------
	--PROCESSOR SHOWING
	-------------------------------------------------------------------------------------------------	
	PROCEDURE show_processor(i IN number)
	IS
		a number := i;
		last1 number;
		first1 number;
		input1 number;
		SOUROV EXCEPTION;
	BEGIN
		if a=1 then
			first1 := 20000;
			last1:= 60000;			
			dbms_output.put_line(' '|| chr(10) ||'Showing High End Processors List:');
			FOR R IN (select * from processor1 where (price > first1 AND price < last1)) LOOP
			dbms_output.put_line(R.pro_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			dbms_output.put_line('Enter The Id you want to pick: ');
			input1 := &X;
			
			
		elsif a=2 then
			first1 := 14000;
			last1:= 20000;
			dbms_output.put_line(' '|| chr(10) ||'Showing Mid End Processors List:');
			FOR R IN (select * from processor1 where (price > first1 AND price < last1)) LOOP
			dbms_output.put_line(R.pro_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			
		elsif a=3 then
			first1 := 10000;
			last1:= 13000;
			dbms_output.put_line(' '|| chr(10) ||'Showing Low End Processors List:');
			FOR R IN (select * from processor1 where (price > first1 AND price < last1)) LOOP
			dbms_output.put_line(R.pro_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
		
		else RAISE SOUROV;
		
		end if;
		
		EXCEPTION 
		When SOUROV THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Option');
	END show_processor;
	
	
	-------------------------------------------------------------------------------------------------
	--RAM SHOWING
	-------------------------------------------------------------------------------------------------
	PROCEDURE show_ram(i IN number)
	IS
		a number := i;
		last2 number;
		first2 number;
		SOUROV EXCEPTION;
	BEGIN
		if a=3 then
			first2 := 2000;
			last2:= 3000;			
			dbms_output.put_line(' '|| chr(10) ||'Showing Low End Ram List:');
			FOR R IN (select * from ram1 where (price > first2 AND price < last2)) LOOP
			dbms_output.put_line(R.ram_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			
		elsif a=2 then
			first2 := 3000;
			last2:= 5000;
			dbms_output.put_line(' '|| chr(10) ||'Showing Mid End Ram List:');
			FOR R IN (select * from ram1 where (price > first2 AND price < last2)) LOOP
			dbms_output.put_line(R.ram_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			
		elsif a=1 then
			first2 := 5000;
			last2:= 6000;
			dbms_output.put_line(' '|| chr(10) ||'Showing High End Ram List:');
			FOR R IN (select * from ram1 where (price > first2 AND price < last2)) LOOP
			dbms_output.put_line(R.ram_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
		else RAISE SOUROV;
		end if;
		EXCEPTION 
		When SOUROV THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Option');
	END show_ram;
	
	
	-------------------------------------------------------------------------------------------------
	--GPU SHOWING
	-------------------------------------------------------------------------------------------------
	PROCEDURE show_gpu(i IN number)
	IS
		a number := i;
		last3 number;
		first3 number;
		SOUROV EXCEPTION;
	BEGIN
		if a=3 then
			first3 := 7000;
			last3:= 10000;			
			dbms_output.put_line(' '|| chr(10) ||'Showing Low End GPU List:');
			FOR R IN (select * from gpu1 where (price > first3 AND price < last3)) LOOP
			dbms_output.put_line(R.gpu_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			
		elsif a=2 then
			first3 := 10000;
			last3:= 30000;
			dbms_output.put_line(' '|| chr(10) ||'Showing Mid End GPU List:');
			FOR R IN (select * from gpu1 where (price > first3 AND price < last3)) LOOP
			dbms_output.put_line(R.gpu_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			
		elsif a=1 then
			first3 := 30000;
			last3:= 100000;
			dbms_output.put_line(' '|| chr(10) ||'Showing High End GPU List:');
			FOR R IN (select * from gpu1 where (price > first3 AND price < last3)) LOOP
			dbms_output.put_line(R.gpu_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
		else RAISE SOUROV;
		end if;
		EXCEPTION 
		When SOUROV THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Option');
	END show_gpu;
	
	
	-------------------------------------------------------------------------------------------------
	--MOTHERBOARD SHOWING
	-------------------------------------------------------------------------------------------------
	PROCEDURE show_motherboard(i IN number)
	IS
		a number := i;
		last4 number;
		first4 number;
		SOUROV EXCEPTION;
	BEGIN
		if a=3 then
			first4 := 6000;
			last4:= 10000;			
			dbms_output.put_line(' '|| chr(10) ||'Showing Low End Motherboard List:');
			FOR R IN (select * from motherboard1 where (price > first4 AND price < last4)) LOOP
			dbms_output.put_line(R.mobo_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			
		elsif a=2 then
			first4 := 10000;
			last4:= 15000;
			dbms_output.put_line(' '|| chr(10) ||'Showing Mid End Motherboard List:');
			FOR R IN (select * from motherboard1 where (price > first4 AND price < last4)) LOOP
			dbms_output.put_line(R.mobo_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			
		elsif a=1 then
			first4 := 15000;
			last4:= 20000;
			dbms_output.put_line(' '|| chr(10) ||'Showing High End Motherboard List:');
			FOR R IN (select * from motherboard1 where (price > first4 AND price < last4)) LOOP
			dbms_output.put_line(R.mobo_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
		else RAISE SOUROV;
		end if;
		EXCEPTION 
		When SOUROV THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Option');
	END show_motherboard;
	
	
	-------------------------------------------------------------------------------------------------
	--SSD SHOWING
	-------------------------------------------------------------------------------------------------
	PROCEDURE show_ssd(i IN number)
	IS
		a number := i;
		last5 number;
		first5 number;
		SOUROV EXCEPTION;
	BEGIN
		if a=3 then
			first5 := 2000;
			last5:= 3000;			
			dbms_output.put_line(' '|| chr(10) ||'Showing Low End SSD List:');
			FOR R IN (select * from ssd1 where (price > first5 AND price < last5)) LOOP
			dbms_output.put_line(R.ssd_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			
		elsif a=2 then
			first5 := 3000;
			last5:= 4000;
			dbms_output.put_line(' '|| chr(10) ||'Showing Mid End SSD List:');
			FOR R IN (select * from ssd1 where (price > first5 AND price < last5)) LOOP
			dbms_output.put_line(R.ssd_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
			
		elsif a=1 then
			first5 := 4000;
			last5:= 5000;
			dbms_output.put_line(' '|| chr(10) ||'Showing High End SSD List:');
			FOR R IN (select * from ssd1 where (price > first5 AND price < last5)) LOOP
			dbms_output.put_line(R.ssd_id || '        	' || R.name	||'			'|| R.price || '       ');
			END LOOP;
		else RAISE SOUROV;
		end if;
		EXCEPTION 
		When SOUROV THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Option');
	END show_ssd;
	
	
	-------------------------------------------------------------------------------------------------
	--COMPONENTS PRICE CALCULATOR
	-------------------------------------------------------------------------------------------------
	FUNCTION sumation(S1 IN number,S2 IN number,S3 IN number,S4 IN number,S5 IN number)
	RETURN NUMBER
	IS
	a number ;
	a1 processor1.name%TYPE;
	b number ;
	b1 ram1.name%TYPE;
	c number ;
	c1 gpu1.name%TYPE;
	d number ;
	d1 motherboard1.name%TYPE;
	e number ;
	e1 ssd1.name%TYPE;
	
	BEGIN
        FOR R IN (SELECT * FROM processor1 where pro_id = S1) LOOP
			a:= R.price;
			a1:= R.name;
		END LOOP;
		
		FOR R IN (SELECT * FROM ram1 where ram_id = S2) LOOP
			b:= R.price;
			b1:= R.name;
		END LOOP;
		
		FOR R IN (SELECT * FROM gpu1 where gpu_id = S3) LOOP
			c:= R.price;
			c1:= R.name;
		END LOOP;
		
		FOR R IN (SELECT * FROM motherboard1 where mobo_id = S4) LOOP
			d:= R.price;
			d1:= R.name;
		END LOOP;
		
		FOR R IN (SELECT * FROM ssd1 where ssd_id = S5) LOOP
			e:= R.price;
			e1:= R.name;
		END LOOP;
		
		dbms_output.put_line('Selected Processor is: ' || ' ' ||a1||',Which Price is' || ' ' || a	|| ' ');
		dbms_output.put_line('Selected Ram is: ' || ' ' ||b1||'Which Price is' || ' ' || b	|| ' ');
		dbms_output.put_line('Selected GPU is: ' || ' ' ||c1||'Which Price is' || ' ' || c	|| ' ');
		dbms_output.put_line('Selected Motherboard is: ' || ' ' ||d1||'Which Price is' || ' ' || d	|| ' ');
		dbms_output.put_line('Selected SSD is: ' || ' ' ||e1||'Which Price is' || ' ' || e	|| ' ');
		
		dbms_output.put_line('TOTAL COST FOR THE PC : ');
		return (a+b+c+d+e);
		
	END sumation;
	
END components;
/


/*
begin
	components.show_processor(1);
	components.show_gpu(1);
	components.show_ram(1);
	components.show_motherboard(1);
	components.show_ssd(1);
end;
/
ACCEPT X NUMBER PROMPT "CHOOSE OPTION FOR PROCESSOR:"
ACCEPT Y NUMBER PROMPT "CHOOSE OPTION FOR RAM:"
ACCEPT Z NUMBER PROMPT "CHOOSE OPTION FOR GPU:"
ACCEPT W NUMBER PROMPT "CHOOSE OPTION FOR MOTHERBOARD:"
ACCEPT V NUMBER PROMPT "CHOOSE OPTION FOR SSD:"
Declare
	input1 number := &X;
	input2 number := &Y;
	input3 number := &Z;
	input4 number := &W;
	input5 number := &V;
	sum1 number;
begin
	--dbms_output.put_line('gg');
	sum1 := components.sumation(input1,input2,input3,input4,input5);
	dbms_output.put_line(sum1);
end;
/

*/





