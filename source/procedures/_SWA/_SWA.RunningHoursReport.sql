create procedure --RJM
"_SWA"."RunningHoursReport"( 
  in @NodeId char(1024) default null,
  in @VesselId integer default null,
  in @StartDate date default null ) 
result( 
  "VesselName" char(80),
  "HSC" char(25),
  "EquipmentName" char(80),
  "Reading1" char(25),
  "Reading2" char(25),
  "Reading3" char(25),
  "Reading4" char(25),
  "Reading5" char(25),
  "Reading6" char(25),
  "Reading7" char(25),
  "VesselId" integer,
  "EquipmentId" char(10),
  "ParentEquipmentId" char(10) ) 
begin
  /*
2018-07-05 RJM E-04250
*/
  if("ECO"."CheckNull"(@VesselId) is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
  end if;
  if("ECO"."CheckNull"(@StartDate) is null) then
    set @StartDate = current utc timestamp
  end if;
  call "SWA"."RunningHoursReport"(@VesselId,@StartDate)
end