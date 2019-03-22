create procedure "_VTL"."DocumentSubmitInsert"( 
  in @DocumentTypeId smallint,
  in @Comments long varchar,
  in @DocumentNumber varchar(50) default null,
  in @VesselIds varchar(1024) default null,
  in @Vessels varchar(1024) default null,
  in @RequestDrawingNumberId integer default null,
  in @RequestDrawingNumberDetailId integer default null,
  in @RequestTechManualNumberId integer default null,
  in @AttachmentName char(256),
  in @AttachmentData long varchar ) 
result( 
  "Success" bit,
  "DocumentSubmitId" integer,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."DocumentSubmitInsert"(@DocumentTypeId,@Comments,@DocumentNumber,@VesselIds,@Vessels,@RequestDrawingNumberId,@RequestDrawingNumberDetailId,@RequestTechManualNumberId,@AttachmentName,@AttachmentData)
end