clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN 
    DBMS_OUTPUT.PUT_LINE('PC BUILD 101');
END;
/

PROMPT "PLEASE CHOOSE OPTION";
ACCEPT X NUMBER PROMPT "For High Range Build Enter (1) || For Mid Range Build Enter (2) || For Low Range Build Enter (3) = "


DECLARE
    N number;
	S varchar2(30);
	D number;
	SOUROV EXCEPTION;
Begin
	N := &X;
	components.show_processor(N);
	components.show_gpu(N);
	components.show_ram(N);
	components.show_motherboard(N);
	components.show_ssd(N);

End;
/

ACCEPT X NUMBER PROMPT "Enter the PROCESSOR ID:"
ACCEPT Y NUMBER PROMPT "Enter the RAM ID:"
ACCEPT Z NUMBER PROMPT "Enter the GPU ID:"
ACCEPT W NUMBER PROMPT "Enter the MOTHERBOARD ID:"
ACCEPT V NUMBER PROMPT "Enter the SSD ID:"
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
