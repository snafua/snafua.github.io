create procedure "_SRM"."TeamMessageItems"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "TeamMessageId" integer,
  "ServiceRequestId" integer,
  "TeamMessageAuthorId" integer,
  "TeamMessageAuthorName" char(256),
  "TeamMessageTimeStamp" timestamp,
  "TeamMessageTo" long varchar,
  "TeamMessage" long varchar,
  "TeamMessageUnread" bit ) 
begin
  call "SRM"."TeamMessageItems"(@RowId)
end