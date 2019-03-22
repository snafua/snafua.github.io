create procedure "_NS5"."PrepareWarning"( in @Warning char(96) ) 
result( "ResultText" long varchar ) 
begin
  call "NS5"."PrepareWarning"(@Warning)
end