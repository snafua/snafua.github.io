create procedure "_LIT"."UsersFilterAdvancedSave"( 
  in @AndOr integer,
  in @Data long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIT"."UsersFilterAdvancedSave"(@AndOr,@Data)
end