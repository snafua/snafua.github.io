create procedure "_SRM"."ServiceRequestsProgressMarkAsRead"( 
  in @NodeId char(1024) default null,
  in @ServiceRequestExternalID char(20) default null,
  in @AllTextSearchString long varchar default null,
  in @NumberOfDaysToDisplay integer default 30,
  in @RowId char(1024) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) begin
  call "SRM"."ServiceRequestsProgressMarkAsRead"(
  @NodeId,
  @ServiceRequestExternalID,
  @AllTextSearchString,
  @NumberOfDaysToDisplay,
  @RowId)
end