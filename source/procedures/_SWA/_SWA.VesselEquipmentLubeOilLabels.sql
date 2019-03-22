create procedure "_SWA"."VesselEquipmentLubeOilLabels"( 
  in @VesselId char(1024),
  in @Statuses char(256),
  in @RowIds long varchar default null ) 
result( 
  "RowId" char(1024),
  "SPID" char(7),
  "Status" char(20),
  "EquipmentDescription" char(80),
  "SamplePoint" char(50),
  "Machine" char(3),
  "Label" char(10),
  "LubeOil" char(50) ) 
begin
  /*
2018-01-03 RJM
2018-02-01 JLD E-03757
*/
  declare @VesselIdInt integer;
  if "ISNUMERIC"(@VesselId) = 1 then
    set @VesselIdInt = @VesselId
  else
    set @VesselIdInt = "SWA"."KeyValuePairParse"(@VesselId,'VesselId')
  end if;
  call "SWA"."VesselEquipmentLubeOilLabels"(@VesselIdInt,@Statuses,@RowIds)
end