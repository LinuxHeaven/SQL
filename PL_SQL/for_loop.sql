DECLARE
var number(5);
num1 number(5);

BEGIN
    num1:=&num1;
    FOR var in 1 .. num1 LOOP
        dbms_output.put_line( var || ' ');
    END LOOP;
END;
/