create procedure "_VTL"."RequestDocumentsAttachments"( 
  in @RequestDocumentsId integer,
  in @OrderBy char(256) default null ) 
result( 
  "RequestDocumentsId" integer,"Size" integer,"FileName" char(200),"FileType" char(200),"AttachmentId" integer,"OrderBy" char(256) ) 
begin
  call "VTL"."RequestDocumentsAttachments"(@RequestDocumentsId,@OrderBy)
end