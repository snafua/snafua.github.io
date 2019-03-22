create procedure "_VTL"."RsnElecCopyUnavail"()
result( "RsnElecCopyUnavailId" integer,"Reason" char(25),"DisplayOrder" tinyint ) 
begin
  call "VTL"."RsnElecCopyUnavail"()
end