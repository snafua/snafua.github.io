create procedure "_AWB"."WorkbookAttachmentAssign"( 
  in @AttachmentRowId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @ErrorMessage long varchar;
  declare @VesselId integer;
  declare @AttachmentId integer;
  declare @MachineryHistoryId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  call "SAMM"."MachineryHistoryAttachmentsInsert"(@VesselId,@AttachmentId,@MachineryHistoryId);
  select 1 as "Success",
    @ErrorMessage as "ErrorMessage"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
end