create procedure "_NS5"."PrepareFault"( in @Fault char(60),in @Severity integer ) 
result( "ResultText" long varchar ) 
begin
  call "NS5"."PrepareFault"(@Fault,@Severity)
end