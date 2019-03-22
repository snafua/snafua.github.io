create procedure "_SEAS"."FuelOilLoadUserInfo"()
result( 
  "UserName" char(85),
  "UserEmail" char(255),
  "UserOffice" char(30),
  "UserPhone" char(30),
  "UserEmailEditable" bit,
  "UserOfficeEditable" bit,
  "UserPhoneEditable" bit ) 
begin
  call "SEAS"."FuelOilLoadUserInfo"()
end