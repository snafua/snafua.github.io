create procedure "_SRM"."ServiceRequestsActiveSequenceSave"( in @RowId char(1024),
  in @ActiveSequenceNumber tinyint ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SRM"."ServiceRequestsActiveSequenceSave"(@RowId,@ActiveSequenceNumber)
end