DECLARE
num1 number(5);
r number(5);
message varchar2(100);

BEGIN
    num1:=&num1;
    r:=MOD(num1, 2);
    IF r=0 THEN
        message:='even';
    ELSIF r=1 THEN
        message:='odd';
    ELSE
        message:='invalid input';
    END IF;
    dbms_output.put_line( num1 ||' is a ' || message || ' number');
END;
/