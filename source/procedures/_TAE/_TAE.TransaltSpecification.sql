create function "_TAE"."TransaltSpecification"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Document long binary;
  select "TAE"."TransaltSpecification"(@RowId) into @Document;
  return(@Document)
end