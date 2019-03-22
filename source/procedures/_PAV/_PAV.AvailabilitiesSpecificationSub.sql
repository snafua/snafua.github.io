create function "_PAV"."AvailabilitiesSpecificationSub"( 
  in @RowId char(256) ) 
returns long varchar
begin
  declare @Document long varchar;
  select "PAV"."AvailabilitiesSpecificationSub"(@RowId) into @Document;
  return(@Document)
end