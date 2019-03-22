create procedure "_ELM"."DownloadLogSequenceValue"( 
  in @SiteId integer,
  in @LogId integer,
  in @PendingLogSequenceId integer,
  in @PendingLogSourceId char(40),
  in @ProcessId integer,
  in @ParameterId integer,
  in @UserId integer,
  in @ParameterValueEntryDateTime char(20),
  in @ParameterValue char(20),
  in @ParameterComment char(1024) ) 
begin
  call "ELM"."DownloadLogSequenceValue"(@SiteId,@LogId,@PendingLogSequenceId,@PendingLogSourceId,@ProcessId,@ParameterId,@UserId,@ParameterValueEntryDateTime,@ParameterValue,@ParameterComment)
end