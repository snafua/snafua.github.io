create procedure "_SMH"."HistoryItemsLoad"( 
  in @TreeNodeId char(256) default null,
  in @OrderBy char(256) default null,
  in @IsLimited bit default null,
  in @NodeId char(256) default null ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "MachineryHistoryId" integer,
  "TestResultId" integer,
  "MaintenanceLevel" char(20),
  "VesselName" char(80),
  "EquipmentName" char(80),
  "HistoryItemType" char(20),
  "HistoryItemSubType" char(20),
  "HistoryItemDescription" char(50),
  "Originator" char(85),
  "HistoryItemTimestampChar" char(16),
  "AttachmentIdValues" long varchar,
  "TestResultIdValues" long varchar,
  "MachineryHistoryIdValues" long varchar,
  "WorkRequestIdValues" long varchar,
  "CorrespondanceIdValues" long varchar,
  "PriorityStatus" char(20),
  "PriorityStatusIndex" integer,
  "HistoryItemSummaryTimestampChar" char(16),
  "ShowRelated" bit,
  "OrderBy" char(256),
  "TotalRows" integer ) 
begin
  call "SMH"."HistoryItemsLoad"(@TreeNodeId,@OrderBy,@IsLimited,@NodeId)
end