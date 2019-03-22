create procedure "_TAR"."TransaltRequestNumberGetClass"( in @RowId char(1024) ) 
result( 
  "VesselClass" char(20) ) 
begin
  call "TAR"."TransaltRequestNumberGetClass"(@RowId)
end