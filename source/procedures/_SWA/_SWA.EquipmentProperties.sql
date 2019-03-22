create procedure --E-04381
--RJM
"_SWA"."EquipmentProperties"( 
  in @ApplicationId integer,
  in @NodeId char(1024) default null,
  in @RowId char(1024) default null,
  in @VesselId integer default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "VesselHSC" char(12),
  "VesselEquipmentDesc" char(80),
  "EFD" char(80),
  "HSC" char(12),
  "EquipmentClassification" char(50),
  "AllowancePartsList" char(20),
  "CLIPHSC" char(12),
  "NamePlateData" long varchar,
  "ReportType" char(3),
  "ReportId" integer ) 
begin
  /*
2016-07-08 RJM
2018-06-01 JHM E-03966 Added support for EquipmentHSC
*/
  declare @EquipmentId integer;
  declare @EquipmentHSC char(50);
  declare @RowNodeId char(1024);
  set @RowNodeId = "ISNULL"("ECO"."CheckNull"(@NodeId),@RowId);
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowNodeId,'EquipmentId');
  set @EquipmentHSC = "SWA"."KeyValuePairParse"(@RowNodeId,'EquipmentHSC');
  if(@EquipmentHSC is not null) then set @EquipmentHSC = "BASE64_DECODE"(@EquipmentHSC) end if;
  if(@VesselId is null) then set @VesselId = "SWA"."KeyValuePairParse"(@RowNodeId,'VesselId') end if;
  if(@VesselId is null) then
    select first "VesselId"
      into @VesselId
      from "SWA"."EquipmentPropertiesVessels"(@ApplicationId,@EquipmentId,@EquipmentHSC)
      order by "VesselName" asc
  end if;
  call "SWA"."EquipmentProperties"(@VesselId,@EquipmentId,@EquipmentHSC)
end