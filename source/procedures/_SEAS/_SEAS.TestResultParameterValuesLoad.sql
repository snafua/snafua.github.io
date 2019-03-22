create procedure --JLD
"_SEAS"."TestResultParameterValuesLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @Sort long varchar default 'ParameterTitle ASC' ) 
result( 
  "ProcessTitle" char(50),
  "ParameterTitle" char(50),
  "ParameterTimestamp" timestamp,
  "ParameterValue" char(10),
  "VesselId" smallint,
  "LogId" integer,
  "ProcessId" integer,
  "ParameterId" integer ) 
begin
  /*
2018-07-16 JLD E-04290 B-18595
*/
  call "SEAS"."TestResultParameterValuesLoad"(@VesselId,@EquipmentId,@TestResultId,@Sort)
end