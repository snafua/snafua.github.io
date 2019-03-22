create procedure "_SEAS"."ReportListLoad"( in @ReportArea char(15) ) 
result( "ReportId" integer,"ReportTitle" long varchar ) 
begin
  call "SEAS"."ReportListLoad"(@ReportArea)
end