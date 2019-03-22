create procedure "_SRM"."TaskManagerReport"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "ServiceRequestId" integer,
  "ServiceRequestProgressId" integer,
  "ServiceRequestProgressType" char(50),
  "ServiceRequestProgressAuthorId" integer,
  "ServiceRequestProgressAuthorName" char(256),
  "ServiceRequestProgressTimeStamp" timestamp,
  "ServiceRequestProgressDetails" long varchar,
  "ServiceRequestProgressUnread" bit ) 
begin
  declare @ServiceRequestId integer;
  set @ServiceRequestId = "SWA"."KeyValuePairParse"(@RowId,'ServiceRequestId');
  call "SRM"."TaskManagerReport"(@ServiceRequestId)
end