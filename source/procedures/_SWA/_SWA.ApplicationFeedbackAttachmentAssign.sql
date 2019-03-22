create procedure "_SWA"."ApplicationFeedbackAttachmentAssign"( 
  in @ApplicationId integer,
  in @AttachmentRowId char(1024),
  in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @ErrorMessage long varchar;
  declare @VesselId integer;
  declare @AttachmentId integer;
  declare @FeedbackId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @FeedbackId = "SWA"."KeyValuePairParse"(@RowId,'FeedbackId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  call "SWA"."ApplicationFeedbackAttachmentInsert"(@VesselId,@FeedbackId,@AttachmentId);
  select 1 as "Success",
    @ErrorMessage as "ErrorMessage"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
end