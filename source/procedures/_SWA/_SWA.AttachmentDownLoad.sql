create procedure "_SWA"."AttachmentDownLoad"( 
  in @AttachmentRowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "Attachment" long binary ) 
begin
  declare @VesselId integer;
  declare @AttachmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'VesselId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  select "SWA"."AttachmentDownLoad"(@AttachmentId,@VesselId) as "Attachment"
end