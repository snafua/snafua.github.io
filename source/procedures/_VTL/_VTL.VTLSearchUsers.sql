create procedure "_VTL"."VTLSearchUsers"( in @PartOfNameorEmail char(256) ) 
result( 
  "UserFullName" char(128),
  "Emails" varchar(500),
  "PhoneNumber" char(20) ) 
begin
  call "VTL"."VTLSearchUsers"(@PartOfNameorEmail)
end