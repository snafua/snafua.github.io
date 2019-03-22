create function "_PNG"."WorkItemAttachmentDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Result long binary;
  declare @VesselId integer;
  declare @AttachmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@RowId,'AttachmentId');
  set @Result = "SAMM"."AttachmentDownload"(@VesselId,@AttachmentId);
  return(@Result)
end