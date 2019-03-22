create procedure "_SEAS"."ChemistryReportStatusUpdate"( 
  in @VesselId smallint,
  in @Month char(10),
  in @Status smallint ) 
begin
  call "SEAS"."ChemistryReportStatusUpdate"(@VesselId,@Month,@Status)
end