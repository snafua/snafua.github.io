create procedure "_SRM"."ServiceRequestsStatusItemsCount"( 
  in @NodeId char(1024) default null,
  in @ServiceRequestExternalID char(20) default null,
  in @AllTextSearchString long varchar default null,
  in @StatusToDisplay char(30) default 'All' ) 
result( "StatusToDisplay" char(30),
  "TotalRows" integer ) 
begin
  select @StatusToDisplay as "StatusToDisplay",
    "min"("TotalRows") as "TotalRows"
    from "_SRM"."ServiceRequestsStatusItems"(@NodeId,
      @ServiceRequestExternalID,
      @AllTextSearchString,
      @StatusToDisplay)
end