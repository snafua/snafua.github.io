create procedure "_TAE"."ExpenditureTypes"()
result( 
  "ExpenditureTypeId" char(10),
  "ExpenditureTypeDescription" char(128) ) 
begin
  call "TAE"."ExpenditureTypes"()
end