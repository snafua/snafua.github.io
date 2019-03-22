create procedure "_TAE"."ExecutionCompletionAttachments"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "DocumentNumber" char(50),
  "DocumentTitle" char(80),
  "AttachmentType" char(25),
  "AttachmentId" integer,
  "AttachmentFileName" char(256),
  "NotAvailable" bit,
  "ReadOnly" bit ) 
begin
  call "TAE"."ExecutionCompletionAttachments"(@RowId)
end