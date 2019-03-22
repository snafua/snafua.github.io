create procedure "_SEAS"."ReportsList"( in @Roles long varchar ) 
result( "ReportId" integer,"ReportTitle" long varchar,"HasConfig" bit ) 
begin
  call "SEAS"."ReportsList"(@Roles)
end