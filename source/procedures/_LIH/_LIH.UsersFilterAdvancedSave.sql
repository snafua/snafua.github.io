create procedure "_LIH"."UsersFilterAdvancedSave"( 
  in @AndOr integer,
  in @Data long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIH"."UsersFilterAdvancedSave"(@AndOr,@Data)
end