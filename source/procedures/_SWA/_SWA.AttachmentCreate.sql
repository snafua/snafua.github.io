create procedure "_SWA"."AttachmentCreate"( 
  in @ApplicationId integer,
  in @RowId char(1024) default null,
  in @Attachment long binary,
  in @AttachmentTitle char(128),
  in @AttachmentDescription char(3000) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" char(3000),
  "AttachmentRowId" char(128) ) 
begin
  declare @ErrorMessage char(3000);
  declare @AttachmentId integer;
  declare @AttachmentRowId char(128);
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  if @AttachmentDescription is null then
    set @AttachmentDescription = ''
  end if;
  if @VesselId is not null then
    set @AttachmentId = "SAMM"."AttachmentsInsertUpdate"(@VesselId,@AttachmentTitle,@AttachmentDescription);
    call "SAMM"."AttachmentBlobsInsertUpdate"(@VesselId,@AttachmentId,@Attachment);
    set @AttachmentRowId = "STRING"('VesselId=',@VesselId,',AttachmentId=',@AttachmentId)
  else
    set @AttachmentId = "PNG"."AttachmentsInsertUpdate"(@AttachmentTitle,@Attachment);
    set @AttachmentRowId = "STRING"('AttachmentId=',@AttachmentId)
  end if;
  select 1 as "Success",
    @ErrorMessage as "ErrorMessage",
    @AttachmentRowId as "AttachmentRowId"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage",
      null as "AttachmentRowId"
end