create procedure "_PAV"."ExpenditureTypesList"()
result( 
  "ExpenditureTypeCode" char(10),
  "ExpenditureType" char(128) ) 
begin
  call "PAV"."ExpenditureTypesList"()
end