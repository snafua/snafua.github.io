create procedure "_VTL"."DetailsGrid"( 
  in @RowId char(1024) ) 
result( 
  "Name" char(50),
  "Value" char(1024) ) 
begin
  call "VTL"."DetailsGrid"(@RowId)
end