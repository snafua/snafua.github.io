create procedure "_PNG"."ContractLocations"( 
  in @RowId char(1024) default null ) 
result( 
  "ContractLocation" char(128),
  "ContractLocationId" integer,
  "IsSelected" bit ) 
begin
  call "PNG"."ContractLocations"(@RowId)
end