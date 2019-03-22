create procedure "_SRM"."ServiceRequestsProgress"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "ServiceRequestId" integer,
  "ServiceRequestProgressId" integer,
  "ServiceRequestProgressType" char(50),
  "ServiceRequestProgressAuthorId" integer,
  "ServiceRequestProgressAuthorName" char(128),
  "ServiceRequestProgressTimeStamp" timestamp,
  "ServiceRequestProgressDetails" long varchar ) 
begin
  call "SRM"."ServiceRequestsProgress"(@RowId)
end