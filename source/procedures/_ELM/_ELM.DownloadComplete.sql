create procedure "_ELM"."DownloadComplete"( 
  in @SiteId integer,
  in @PendingLogSourceId char(40) ) 
begin
  call "ELM"."DownloadComplete"(@SiteId,@PendingLogSourceId)
end