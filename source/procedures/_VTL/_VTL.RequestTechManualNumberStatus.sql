create procedure "_VTL"."RequestTechManualNumberStatus"()
result( "RequestTechManualNumberStatusId" integer,"RequestTechManualNumberStatus" char(25),"DisplayOrder" tinyint ) 
begin
  call "VTL"."RequestTechManualNumberStatus"()
end