create procedure --RJM
"_AWB"."RunningHours"( 
  in @NodeId char(1024) default null,
  in @VesselId integer default null ) 
result( 
  "EquipmentRowId" char(1024),
  "EquipmentName" char(80),
  "Units" char(10),
  "LogbookReading" integer,
  "CumulativeHours" integer,
  "CurrentHours" integer,
  "NewHours" integer,
  "EquipmentId" integer,
  "ParentEquipmentId" integer,
  "ParentEquipmentName" char(80),
  "ParentUnits" char(10),
  "ParentLogbookReading" integer,
  "ParentCumulativeHours" integer,
  "ParentCurrentHours" integer,
  "ParentNewHours" integer,
  "ParentRowId" char(1024) ) 
begin
  /*
2018-06-26 RJM E-04250
*/
  if(@VesselId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
  end if;
  call "AWB"."RunningHours"(@VesselId)
end