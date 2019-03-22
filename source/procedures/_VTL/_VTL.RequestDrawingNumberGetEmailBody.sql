create procedure "_VTL"."RequestDrawingNumberGetEmailBody"( 
  in @RequestedById integer default null,
  in @RequestedByFullName varchar(256) ) 
result( 
  "EmailBody" long varchar ) 
begin
  call "VTL"."RequestDrawingNumberGetEmailBody"(@RequestedById,@RequestedByFullName)
end