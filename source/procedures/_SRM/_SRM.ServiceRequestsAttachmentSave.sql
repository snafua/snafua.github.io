create procedure "_SRM"."ServiceRequestsAttachmentSave"( 
  in @RowId char(1024),
  in @ServiceRequestAttachmentStatus char(25),
  in @ServiceRequestsDeliverableType char(50),
  in @AttachmentDescription long varchar,
  in @Revision char(20),
  in @Deliverable bit,
  in @ServiceRequestAttachIsActive bit,
  in @AttachmentFileName char(128),
  in @Attachment long binary ) 
result( "RowId" char(1024),"Success" bit,"ErrorMessage" long varchar ) 
begin call "SRM"."ServiceRequestsAttachmentSave"(
  @RowId,
  @ServiceRequestAttachmentStatus,
  @ServiceRequestsDeliverableType,
  @AttachmentDescription,
  @Revision,
  @Deliverable,
  @ServiceRequestAttachIsActive,
  @AttachmentFileName,
  @Attachment)
end