create procedure "_NS5"."GetStandardEquipmentAverageData"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "VibMeasurementPointLocationId" integer,"VibMeasurementRangeId" integer,"VibMeasurementAxisId" integer,"SpectrumDataLinesOfResolution" integer,"VibStandardDataNumberOfSamples" integer,"VibStandardDataMaxFrequencyInOrders" real,"VibStandardDataPeaks" char(1000),"VibStandardDataSum" long binary,"VibStandardDataSquaredSum" long binary ) 
begin
  call "NS5"."GetStandardEquipmentAverageData"(@VesselId,@EquipmentId,@TestResultId)
end