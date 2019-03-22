create procedure "_SWA"."ResolveAuthenticationToken"( 
  in @SWAuthToken char(256) ) 
result( 
  "UserLoginId" char(256),
  "UserPassword" char(256),
  "ErrorCode" integer,
  "ErrorMessage" long varchar ) 
begin
  call "SWA"."ResolveAuthenticationToken"(@SWAuthToken)
end