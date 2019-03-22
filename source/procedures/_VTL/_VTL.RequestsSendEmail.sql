create procedure "_VTL"."RequestsSendEmail"( 
  in @RequestType long varchar,
  in @EmailAddresses long varchar,
  in @EmailFrom char(255),
  in @ID integer,
  in @RequestDomain char(100) default null,
  in @DocumentInfo long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  declare @Success bit;
  declare @ErrorMessage long varchar;
  set @Success = 1;
  set @ErrorMessage = 'No Error';
  call "VTL"."RequestsSendEmail"(@RequestType,@EmailAddresses,@EmailFrom,@ID,@Success,@ErrorMessage,@RequestDomain,@DocumentInfo);
  select @Success as "Success",
    "isnull"(@ErrorMessage,'No Error') as "ErrorMessage" from "sys"."dummy"
end