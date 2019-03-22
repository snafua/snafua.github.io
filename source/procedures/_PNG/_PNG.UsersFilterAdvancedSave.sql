create procedure "_PNG"."UsersFilterAdvancedSave"( 
  in @AndOr integer,
  in @Data long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PNG"."UsersFilterAdvancedSave"(@AndOr,@Data)
end