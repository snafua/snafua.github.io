create procedure "_PEM"."ExpenditureTypes"( 
  in @VesselId integer ) 
result( 
  "ExpenditureTypeCode" char(10),
  "ExpenditureType" char(128) ) 
begin
  call "PAV"."ExpenditureTypesList"()
end