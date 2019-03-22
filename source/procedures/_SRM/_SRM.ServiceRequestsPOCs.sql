create procedure "_SRM"."ServiceRequestsPOCs"( 
  in @PartOfPOCNameorEmail char(256) ) 
result( 
  "ServiceRequestPOCId" integer,
  "POCLastname" char(128),
  "POCFirstname" char(128),
  "POCEmails" char(500),
  "POCPhoneNumber" char(20) ) 
begin call "SRM"."ServiceRequestsPOCs"(@PartOfPOCNameorEmail)
end