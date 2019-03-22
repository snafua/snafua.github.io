create procedure "_VTL"."VTLgetUserInfo"()
result( 
  "UserFullName" char(128),
  "Emails" varchar(500),
  "PhoneNumber" char(20),
  "UserId" integer ) 
begin
  call "VTL"."VTLgetUserInfo"()
end