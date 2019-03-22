create procedure "_VTL"."RequestTechManualNumberEmailComment"( in @RequestTechManualNumberId integer,in @EmailAddresses long varchar,in @EmailText long varchar,
  in @RequestDomain char(100) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."RequestTechManualNumberEmailComment"(@RequestTechManualNumberId,@EmailAddresses,@EmailText,@RequestDomain)
end