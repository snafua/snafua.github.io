create procedure "_SEAS"."NavigationTestResultsLoad"( 
  in @VesselClassId smallint default null,
  in @VesselId smallint default null,
  in @EquipmentSystemId integer default null,
  in @EquipmentClassificationId integer default null,
  in @EquipmentId integer default null,
  in @MID integer default null,
  in @SMP integer default null,in @Sort long varchar default '7 DESC',
  in @BeginDate char(16) default null,
  in @EndDate char(16) default null,
  in @MaxResults integer default 100,
  in @Priorities long varchar default null,
  in @TestTypes long varchar default null ) 
result( "VesselName" char(80),"EquipmentSystemDescription" char(50),"EquipmentClassificationDescription" char(50),"EquipmentDescription" char(80),"TestTypeDescription" char(15),"TestResultPriorityDescription" char(20),"DataCollectionTimestamp" timestamp,"TestResultPriorityIndex" smallint,"VesselId" smallint,"EquipmentId" integer,"TestResultId" integer,"MeasurementPointDescription" char(128) ) 
begin
  if(@MID is not null) then
    call "SEAS"."NavigationMIDTestResultsLoad"(@VesselClassId,@VesselId,@EquipmentSystemId,@EquipmentClassificationId,@EquipmentId,@MID,@Sort,@BeginDate,@EndDate,@MaxResults,@Priorities,@TestTypes)
  elseif(@SMP is not null) then
    call "SEAS"."NavigationSMPTestResultsLoad"(@VesselClassId,@VesselId,@EquipmentSystemId,@EquipmentClassificationId,@EquipmentId,@SMP,@Sort,@BeginDate,@EndDate,@MaxResults,@Priorities,@TestTypes)
  else
    call "SEAS"."NavigationTestResultsLoad"(@VesselClassId,@VesselId,@EquipmentSystemId,@EquipmentClassificationId,@EquipmentId,@Sort,@BeginDate,@EndDate,@MaxResults,@Priorities,@TestTypes)
  end if
end