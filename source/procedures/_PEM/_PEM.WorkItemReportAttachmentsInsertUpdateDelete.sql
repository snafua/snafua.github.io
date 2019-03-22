create procedure "_PEM"."WorkItemReportAttachmentsInsertUpdateDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer,
  in @ReportId integer,
  in @AttachmentId integer,
  in @AttachmentName char(128),
  in @AttachmentActive bit default 1,
  in @DateInserted date default null,
  in @DateUpdated date default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PEM"."WorkItemReportAttachmentsInsertUpdateDelete"(@VesselId,@ContractId,@WorkItemId,@ReportId,@AttachmentId,@AttachmentName,@AttachmentActive,@DateInserted,@DateUpdated)
end