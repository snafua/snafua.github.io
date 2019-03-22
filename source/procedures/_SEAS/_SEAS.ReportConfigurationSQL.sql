create procedure "_SEAS"."ReportConfigurationSQL"( in @SQL long varchar ) 
result( "Result" long varchar ) 
begin
  call "SEAS"."ReportConfigurationSQL"(@SQL)
end