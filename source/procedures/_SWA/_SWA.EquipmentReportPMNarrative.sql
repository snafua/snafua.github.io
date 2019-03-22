create procedure "_SWA"."EquipmentReportPMNarrative"( 
  in @VesselId integer,
  in @EquipmentScopeId integer,
  in @EquipmentNodeId char(1024),
  in @StartDate date default null,
  in @EndDate date default null ) 
result( 
  "PMTitle" char(50),
  "PMCode" char(4),
  "PMNarrative" long varchar ) 
begin
  declare @EquipmentId integer;
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'EquipmentId');
  call "SWA"."EquipmentReportPMNarrative"(@VesselId,@EquipmentId)
end