create procedure "_VTL"."RequestTechManualNumberGetEmailBody"( 
  in @RequestedById integer,
  in @RequestedByFullName varchar(256) ) 
result( 
  "EmailBody" long varchar ) 
begin
  call "VTL"."RequestTechManualNumberGetEmailBody"(@RequestedById,@RequestedByFullName)
end