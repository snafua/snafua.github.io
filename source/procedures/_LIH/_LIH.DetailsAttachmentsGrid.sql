create procedure "_LIH"."DetailsAttachmentsGrid"( 
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
  call "LIH"."DetailsAttachmentsGrid"(@RowId,@OrderBy)
end