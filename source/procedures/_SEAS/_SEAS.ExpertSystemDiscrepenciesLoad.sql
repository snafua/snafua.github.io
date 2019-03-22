create procedure "_SEAS"."ExpertSystemDiscrepenciesLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,
  in @Sort long varchar default null,
  in @ExpertSystemResultsId timestamp default null ) 
result( "ExpertSystemResultsId" timestamp,"DiagnosisDescription" char(80),"SeverityDescription" char(20) ) 
begin
  call "SEAS"."ExpertSystemDiscrepenciesLoad"(@VesselId,@EquipmentId,@TestId,@Sort,@ExpertSystemResultsId)
end