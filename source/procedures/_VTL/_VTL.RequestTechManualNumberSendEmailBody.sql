create procedure "_VTL"."RequestTechManualNumberSendEmailBody"( 
  in @RequestedById integer default null,
  in @RequestedByFullName varchar(256),
  in @RequestedByEmail varchar(256),
  in @EmailBody long varchar ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."RequestTechManualNumberSendEmailBody"(@RequestedById,@RequestedByFullName,@RequestedByEmail,@EmailBody)
end