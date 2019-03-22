create procedure "_VTL"."DocumentSubmitAttachment"( 
  in @AttachmentId integer,
  in @OrderBy char(256) default null ) 
result( "Size" integer,"FileName" char(200),"FileType" char(200),"AttachmentId" integer,"OrderBy" char(256) ) 
begin
  call "VTL"."DocumentSubmitAttachment"(@AttachmentId,@OrderBy)
end