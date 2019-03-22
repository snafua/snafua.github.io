create procedure "_LIT"."SpecificationRevisions"( 
  in @RowId char(1024),
  in @SpecificationId integer default 0,
  in @OrderBy char(256) default null ) 
result( 
  "RowId" char(1024),
  "SpecificationId" integer,
  "SpecificationFileName" char(256),
  "SpecificationRevision" integer,
  "OrderBy" char(256) ) 
begin
  call "LIT"."SpecificationRevisions"(@RowId,@SpecificationId,@OrderBy)
end