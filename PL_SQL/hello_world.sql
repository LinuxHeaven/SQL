DECLARE
-- basic hello world code
message VARCHAR2(100):='Hello World';
BEGIN
    DBMS_OUTPUT.PUT_LINE ('Hello World ' || message);
END;
/