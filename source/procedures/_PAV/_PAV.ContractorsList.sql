create procedure "_PAV"."ContractorsList"()
result( 
  "ContractorId" integer,
  "Contractor" char(128) ) 
begin
  call "PAV"."ContractorsList"()
end