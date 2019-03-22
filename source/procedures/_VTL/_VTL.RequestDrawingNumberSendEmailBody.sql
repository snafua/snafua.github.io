create procedure "_VTL"."RequestDrawingNumberSendEmailBody"( 
  in @RequestedById integer default null,
  in @RequestedByFullName varchar(256),
  in @RequestedByEmail varchar(256),
  in @EmailBody long varchar ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."RequestDrawingNumberSendEmailBody"(@RequestedById,@RequestedByFullName,@RequestedByEmail,@EmailBody)
end