create procedure "_VTL"."RequestDocumentsEmailComment"( in @RequestDocumentId integer,in @EmailAddresses long varchar,in @EmailText long varchar,
  in @RequestDomain char(100) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."RequestDocumentsEmailComment"(@RequestDocumentId,@EmailAddresses,@EmailText,@RequestDomain)
end