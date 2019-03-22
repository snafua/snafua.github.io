create procedure "_LIT"."WorkItemAttachments"( 
  in @RowId char(512),
  in @OrderBy char(256) default null ) 
result( 
  "RowId" char(512),
  "FileName" char(200),
  "FileSize" integer,
  "Description" char(200),
  "Enclosure" bit,
  "OrderBy" char(256) ) 
begin
  call "LIT"."WorkItemAttachments"(@RowId,@OrderBy)
end