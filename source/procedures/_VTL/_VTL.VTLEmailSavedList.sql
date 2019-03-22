create procedure "_VTL"."VTLEmailSavedList"( in @SavedList long varchar,in @EmailAddresses long varchar,
  in @EmailText long varchar,
  in @RequestDomain char(100) default null ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."VTLEmailSavedList"(@SavedList,@EmailAddresses,@EmailText,@RequestDomain)
end