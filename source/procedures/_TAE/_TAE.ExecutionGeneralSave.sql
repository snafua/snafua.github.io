create procedure "_TAE"."ExecutionGeneralSave"( 
  in @RowId char(1024),
  in @PENGExecution bit,
  in @GFMCost numeric(15,2),
  in @InstallingActivity long varchar,
  in @Comments long varchar,
  in @InstalledEquipment long varchar,
  in @NameplateInfo long varchar,
  in @ManualChanges char(15),
  in @DrawingChanges char(15),
  in @ALLTSD char(15),
  in @ILSRepOnsite bit,
  in @ILSRepNames long varchar,
  in @MASPComplete bit,
  in @TSDDistributed char(15),
  in @WorkComplete bit,
  in @ContractNumber char(25) default null,
  in @AvailabilityType char(15) default null,
  in @WorkItemNumber char(8) default null,
  in @StartDate timestamp default null,
  in @CompletionDate timestamp default null,
  in @FacilityId integer default null,
  in @WorkItemCost numeric(15,2) default null,
  in @TotalCost numeric(15,2) default null,
  in @VesselStatus char(25) default null,
  --added
  in @SponsorCost integer default null ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2017-09-14 RJM added inpit @VesselStatus
2018-11-15 JHM D-04171 Fixes for encoding inconsistencies between 3.1.1, 3.4.2, 3.4.4 and above
2019-01-28 JBH B-20551 Added SponsorCost
*/
  declare @DoNotEncode bit;
  set @DoNotEncode = "SWA"."KeyValuePairParse"(@RowId,'DoNotEncode');
  call "TAE"."ExecutionGeneralSave"(@RowId,@PENGExecution,@GFMCost,@InstallingActivity,@Comments,@InstalledEquipment,@NameplateInfo,@ManualChanges,
  @DrawingChanges,@ALLTSD,@ILSRepOnsite,@ILSRepNames,@MASPComplete,@TSDDistributed,@WorkComplete,@ContractNumber,@AvailabilityType,
  @WorkItemNumber,@StartDate,@CompletionDate,@FacilityId,@WorkItemCost,@TotalCost,@VesselStatus,null,null,@DoNotEncode,@SponsorCost)
end