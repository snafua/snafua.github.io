create procedure "_PNG"."HasPrintSelectedItems"()
result( 
  "HasItem" bit ) 
begin
  select 1 as "HasItem"
    from "DUMMY"
end