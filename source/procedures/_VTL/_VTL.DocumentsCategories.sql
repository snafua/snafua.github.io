create procedure "_VTL"."DocumentsCategories"( in @RowId char(1024) default null ) 
result( 
  "DocumentCategory" char(80),
  "CategoryAssigned" bit,
  "DocumentCategoryId" integer ) 
begin
  call "VTL"."DocumentsCategories"(@RowId)
end