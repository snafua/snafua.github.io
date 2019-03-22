create procedure "_VTL"."RequestDrawingNumberEmailComment"( in @RequestDrawingNumberId integer,in @EmailAddresses long varchar,in @EmailText long varchar,
  in @RequestDomain char(100) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."RequestDrawingNumberEmailComment"(@RequestDrawingNumberId,@EmailAddresses,@EmailText,@RequestDomain)
end