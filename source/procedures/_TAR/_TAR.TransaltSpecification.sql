create function "_TAR"."TransaltSpecification"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Document long binary;
  set @Document = "TAR"."TransaltSpecification"(@Rowid);
  return(@Document)
end