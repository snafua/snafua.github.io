create procedure -- JHM
"_SEAS"."LubeOilToteboardRequiresAnalysis"( 
  in @Vessels long varchar default '',
  in @Sort long varchar default '',
  in @Filter long varchar default '' ) 
result( 
  "LabId" smallint,
  "VesselId" smallint,
  "VesselName" char(80),
  "SampleId" char(9),
  "EquipmentId" integer,
  "MeasurementPointDescription" char(85),
  "LubricantDescription" char(23),
  "LabSeverityIndex" smallint,
  "LabSeverityDescription" char(20),
  "SampleDate" char(10),
  "Ferrogram" char(3),
  "CurrentUser" char(85),
  "CurrentStatus" char(20),
  "IsLocked" bit,
  "Sort" long varchar,
  "SPID" integer,
  "EquipmentDescription" char(80) ) 
begin
  /*
2018-06-11 JHM - E-03966 Added EquipmentDescription column
*/
  call "SEAS"."LubeOilToteboardRequiresAnalysis"(@Vessels,@Sort,@Filter)
end