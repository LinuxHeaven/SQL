DECLARE
num1 number(5);
num2 number(5);
sum number(10);

BEGIN
    num1:=&num1;
    num2:=&num2;
    sum:=num1+num2;
    dbms_output.put_line('Sum: ' || sum);
END;
/