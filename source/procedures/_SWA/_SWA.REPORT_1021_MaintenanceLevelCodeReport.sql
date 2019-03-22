create procedure -- JJD Rejected due to naming convention and formatting
"_SWA"."REPORT_1021_MaintenanceLevelCodeReport"( 
  in @VesselClassId integer ) 
result( 
  "VesselUIC" char(6),
  "VesselClassHullNumberPrefix" char(5),
  "VesselHullNumber" char(10),
  "VesselName" char(80),
  "VesselId" integer,
  "EquipmentId" integer,
  "CorrectedEquipmentId" integer,
  "IgnoreEquipmentIdDifference" bit,
  "VesselHSC" char(12),
  "EquipmentHSC" char(12),
  "CLIPHSC" char(12),
  "CorrectedHSC" char(12),
  "IgnoreHSCDifference" bit,
  "VesselEquipmentDesc" char(80),
  "EquipmentFunctionalDescription" char(80),
  "CorrectedNomenclature" char(80),
  "IgnoreNomenclatureDifference" bit,
  "SystemId" integer,
  "Location" char(50),
  "Manufacturer" char(45),
  "SystemDescription" char(50),
  "Classification" char(50),
  "VesselClassDescription" char(80) ) 
begin
  call "SWA"."REPORT_1021_MaintenanceLevelCodeReport"(@VesselClassId)
end