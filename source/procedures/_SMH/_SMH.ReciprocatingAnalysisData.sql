create procedure "_SMH"."ReciprocatingAnalysisData"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @TestResultIds long varchar ) 
result( 
  "html_doc" long varchar ) 
begin
  call "SMH"."ReciprocatingAnalysisData"(@VesselId,@EquipmentId,@TestResultIds)
end