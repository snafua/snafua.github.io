create procedure "_ELM"."DownloadLogSequence"( 
  in @SiteId integer,
  in @LogId integer,
  in @PendingLogSequenceId integer,
  in @PendingLogSourceId char(40),
  in @OperationalModeId integer,
  in @DepartmentId integer,
  in @UserId integer,
  in @LogSequenceDateTime char(20) ) 
begin
  call "ELM"."DownloadLogSequence"(@SiteId,@LogId,@PendingLogSequenceId,@PendingLogSourceId,@OperationalModeId,@DepartmentId,@UserId,@LogSequenceDateTime)
end