create procedure "_SWA"."UserPasswordRequirements"()
result( 
  "PasswordPattern" char(256),
  "PasswordMessage" long varchar ) 
begin
  select null as "PasswordPattern",
    'Your password has expired, please enter a new one.' as "PasswordMessage"
end