create procedure "_LIH"."WorkItemLibraryVesselsSave"( 
  in @RowIds long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIH"."WorkItemLibraryVesselsSave"(@RowIds)
end