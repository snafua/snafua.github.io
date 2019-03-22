create procedure "_SRM"."ServiceRequestsAttachments"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "ServiceRequestId" integer,
  "AttachmentId" integer,
  "AttachmentDateTime" timestamp,
  "ServiceRequestAttachmentStatus" char(25),
  "ServiceRequestsDeliverableType" char(50),
  "AttachmentDescription" long varchar,
  "UserId" integer,
  "UserFullName" char(128),
  "Revision" char(20),
  "Deliverable" bit,
  "AttachmentFileType" char(25),
  "AttachmentFileName" char(128),
  "AttachmentHash" char(128),
  "AttachmentBytes" integer,
  "CanEditAttachment" bit ) 
begin call "SRM"."ServiceRequestsAttachments"(@RowId)
end