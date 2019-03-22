create procedure "_VTL"."TechManualVesselsDelete"( 
  in @RowId char(1024),in @VesselId integer ) 
result( "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."TechManualVesselsDelete"(@RowId,@VesselId)
end