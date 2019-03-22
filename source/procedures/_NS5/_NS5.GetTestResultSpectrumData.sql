create procedure "_NS5"."GetTestResultSpectrumData"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "LocationId" integer,"MeasPointId" integer,"AxisId" integer,"RangeId" integer,"RPM" integer,"MaxFrequency" integer,"Resolution" integer,"Exponent" integer,"Sensitivity" integer,"Spectrum" long binary ) 
begin
  call "NS5"."GetTestResultSpectrumData"(@VesselId,@EquipmentId,@TestResultId)
end