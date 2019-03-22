create procedure "_PAV"."UsersFilterAdvancedSave"( 
  in @AndOr integer,
  in @Data long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."UsersFilterAdvancedSave"(@AndOr,@Data)
end