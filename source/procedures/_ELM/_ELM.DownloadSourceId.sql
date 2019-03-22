create procedure "_ELM"."DownloadSourceId"()
result( 
  "PendingLogSourceId" char(40) ) 
begin
  call "ELM"."DownloadSourceId"()
end