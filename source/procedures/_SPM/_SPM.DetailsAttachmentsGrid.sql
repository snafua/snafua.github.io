create procedure "_SPM"."DetailsAttachmentsGrid"( 
  in @RowId char(512),
  in @OrderBy char(256) ) 
result( 
  "RowId" char(512),
  "FileName" char(200),
  "FileSize" integer,
  "Description" char(200),
  "Enclosure" bit,
  "OrderBy" char(256) ) 
begin
  call "SPM"."DetailsAttachmentsGrid"(@RowId,@OrderBy)
end