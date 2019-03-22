create procedure "_VTL"."VTLGetUsers"( in @UserName char(25) default '' ) 
result( 
  "UserID" integer,
  "UserFullName" char(256) ) 
begin
  call "VTL"."VTLGetUsers"(@UserName)
end