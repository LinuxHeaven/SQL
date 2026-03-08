CREATE OR REPLACE FUNCTION addition(a in number, b in number)
RETURN NUMBER
IS
    r number;
BEGIN
    r:=a+b;
    return r;
END;
/

DECLARE
    sum NUMBER;
BEGIN
    sum := addition(2, 5);
    DBMS_OUTPUT.PUT_LINE('Sum: ' || sum);
END;
/
