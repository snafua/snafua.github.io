create procedure "_SEAS"."FuelOilSampleProperties"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( 
  "FuelType" char(20),
  "Supplier" char(50),
  "SupplierDensity" char(15),
  "SupplierViscosity" char(15),
  "LabAlertLevel" char(20) ) 
begin
  call "SEAS"."FuelOilSampleProperties"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end