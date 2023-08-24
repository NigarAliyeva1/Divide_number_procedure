create or replace procedure divide_number (p_dividend varchar2,p_divisor varchar2) is
v_result number;
begin
    v_result:=to_number(p_dividend) / to_number(p_divisor);
    dbms_output.put_line('Result : '||p_dividend||' / '||p_divisor||' = '||trunc(v_result,3));
exception
    when value_error then
    dbms_output.put_line('Error: Invalid number format');
     when zero_divide then
    dbms_output.put_line('Error: Division by zero');
    when others then 
    dbms_output.put_line('Oops, Error!'); 
end;

