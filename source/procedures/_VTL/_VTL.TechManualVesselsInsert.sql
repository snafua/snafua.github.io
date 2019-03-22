create procedure "_VTL"."TechManualVesselsInsert"( 
  in @RowId char(1024),in @VesselId integer ) 
result( "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."TechManualVesselsInsert"(@RowId,@VesselId)
end