create procedure "_LIT"."ExpenditureTypes"()
result( 
  "ExpenditureTypeId" char(10),
  "ExpenditureType" char(128) ) 
begin
  call "LIT"."ExpenditureTypes"()
end