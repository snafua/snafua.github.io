create procedure "_SWA"."RepairAttachmentDivest"( 
  in @AttachmentRowId char(1024),
  in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @ErrorMessage long varchar;
  declare @VesselId integer;
  declare @AttachmentId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  call "SAMM"."WorkRequestAttachmentsDelete"(@VesselId,@WorkRequestId,@AttachmentId);
  select 1 as "Success",
    @ErrorMessage as "ErrorMessage"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
end