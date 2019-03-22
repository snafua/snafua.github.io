create procedure "_SEAS"."FuelOilToteboardRequiresAnalysis"( 
  in @Sort long varchar default 'CurrentStatus DESC, AssessmentId DESC, DateBunkered ASC' ) 
result( 
  "LabId" smallint,
  "SampleId" char(9),
  "VesselId" smallint,
  "VesselName" char(80),
  "EquipmentId" integer,
  "PortId" smallint,
  "PortName" char(50),
  "SubPortId" smallint,
  "SubPortName" char(50),
  "FuelTypeId" smallint,
  "FuelType" char(50),
  "AssessmentId" smallint,
  "Assessment" char(20),
  "DateBunkered" char(10),
  "CurrentUser" char(256),
  "CurrentStatus" char(20),
  "IsLocked" bit,
  "Sort" long varchar ) 
begin
  call "SEAS"."FuelOilToteboardRequiresAnalysis"(@Sort)
end