create procedure "_PAV"."AvailabilitiesUnassignedSourceSubGridCount"( 
  in @NodeId char(256) ) 
result( 
  "RowCount" integer ) 
begin
  call "PAV"."AvailabilitiesUnassignedSourceSubGridCount"(@NodeId)
end