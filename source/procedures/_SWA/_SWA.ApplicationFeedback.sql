create procedure --RJM
"_SWA"."ApplicationFeedback"( 
  in @ApplicationId integer,
  in @NodeId char(1024) default null,
  in @ItemId char(1024) default null ) 
result( 
  "Email" char(254),
  "FeedbackDate" date,
  "VesselName" char(80),
  "VesselId" integer,
  "AlertMessage" char(128),
  "CanEditVessel" bit,
  "ScopeId" integer,
  "ScopeName" char(128),
  "TypeId" integer,
  "TypeName" char(128),
  "EquipmentNodeId" char(1024),
  "EquipmentDescription" char(80),
  "MaintenanceCode" char(4),
  "MaintenanceProcedureTitle" char(256),
  "MaintenanceProcedureId" integer,
  "EquipmentId" integer ) 
begin
  /*
2017-11-02 RJM Added @ItemId
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @WorkRequestId integer;
  declare @WorkItemId integer;
  declare @MaintenanceProcedureId integer;
  set @ApplicationId = "ECO"."CheckNull"(@ApplicationId);
  set @ApplicationId = "ISNULL"(@ApplicationId,-1);
  if @ApplicationId = -1 then
    set @ApplicationId = 300
  end if;
  if @NodeId is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
  end if;
  if @VesselId is null then
    set @VesselId = "SWA"."KeyValuePairParse"(@ItemId,'VesselId')
  end if;
  if @ItemId is not null then
    set @EquipmentId = "SWA"."KeyValuePairParse"(@ItemId,'EquipmentId');
    set @WorkRequestId = "SWA"."KeyValuePairParse"(@ItemId,'WorkRequestId');
    set @WorkItemId = "SWA"."KeyValuePairParse"(@ItemId,'WorkItemId');
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@ItemId,'MaintenanceProcedureId')
  end if;
  --message string('@WorkRequestId = ',@WorkRequestId ) type info to client;
  if @VesselId is null then
    select first
      "VesselId"
      into @VesselId
      from "SWA"."ViewVessels"
      order by "VesselName" asc
  end if;
  call "SWA"."ApplicationFeedback"(@ApplicationId,@VesselId,@EquipmentId,@WorkRequestId,@WorkItemId,@MaintenanceProcedureId)
end