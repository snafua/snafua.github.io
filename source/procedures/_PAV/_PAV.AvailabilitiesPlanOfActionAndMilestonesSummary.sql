create procedure --E-04576 B-19465
--RJM
"_PAV"."AvailabilitiesPlanOfActionAndMilestonesSummary"( 
  in @VesselIds long varchar default null,
  in @StartDate date default null,
  in @EndDate date default null ) 
result( 
  "ProgramManagerCode" char(10),
  "Division" char(10),
  "VesselClassId" integer,
  "VesselClassDesc" char(50),
  "VesselId" integer,
  "VesselName" char(85),
  "AvailabilityId" integer,
  "AvailabilityType" char(10),
  "POAMTitle" char(128),
  "AvailabilityBeginDate" date,
  "AvailabilityEndDate" date,
  "AvailabilityDuration" integer,
  "POAMId" integer,
  "MilestoneId" integer,
  "MilestoneDueDate" date,
  "MilestoneStatus" char(10),
  "Milestone" char(128),
  "MilestoneCompletionDate" date,
  "RecentNote" char(2048),
  "Overdue" integer,
  "RowId" char(1024),
  "OrderBy" char(1024),
  "VesselHullNumber" char(30) ) 
begin
  /*
2016-08-09 RJM Added RecentNote, Overdue
2016-08-19 RJM Added POAMTitle
2017-03-02 RJM Added RowId, OrderBy to results
2017-03-15 RJM added VesselHullNumber to results
2017-04-24 RJM  Added list of vessels @Vesselids
2018-10-02 RJME-04576 B-19465 Added @StartDate, @EndDate
*/
  set @VesselIds = "ECO"."CheckNull"(@VesselIds);
  call "PAV"."AvailabilitiesPlanOfActionAndMilestonesSummary"(@VesselIds,@StartDate,@EndDate)
end