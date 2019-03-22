create procedure /*
* _PAV.ImportAttachmentsGrid - thawley
*/
"_PAV"."ImportAttachmentsGrid"( 
  in @RowIdJSOM long varchar ) 
result( 
  "AttachmentId" integer,
  "ItemNumber" char(32),
  "Title" char(50),
  "FileName" char(200) ) 
begin
  /*
2013.06.25	rbh	Updated to receive array of RowIds
*/
  call "PAV"."ImportAttachmentsGrid"(@RowIdJSOM)
end