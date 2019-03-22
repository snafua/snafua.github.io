create procedure --AIM
"_SWA"."SmartVesselReport"( 
  in @VesselIds long varchar,
  in @StartDate "DATETIME",
  in @EndDate "DATETIME" ) 
result( 
  "Group_ID" char(3),
  "InspectionDate" date,
  "InspectionId" integer,
  "ItemNum" integer,
  "TestPlanId" char(5),
  "RepLocationId" smallint,
  "EFD" char(80),
  "TestPlan" char(58),
  "Origin" char(15),
  "ItemType" char(20),
  "EntryDate" "DATETIME",
  "Priority" char(1),
  "Screening" char(30),
  "Location" char(15),
  "Safety" char(3),
  "RAC" smallint,
  "CompleteDate" date,
  "Significant" long varchar,
  "Approval" char(45),
  "Status" char(10),
  "Abstract" long varchar,
  "Recommendation" long varchar,
  "RepairTypeCode" char(10),
  "RepairExternalId" char(10),
  "RepairOpenDate" date,
  "RepairSubject" char(50),
  "RepairStatus" char(10),
  "RepairPriorityCode" char(1),
  "RepairRAC" integer,
  "RepairAvailabilityTypeCode" char(10),
  "RepairCloseDate" date,
  "RepairStartDate" date,
  "RepairCompleteDate" date,
  "RepairIsArchived" bit,
  "RepairEstimatedManHours" numeric(6,2),
  "RepairActualManHours" numeric(6,2),
  "PEStatus" char(10),
  "AvailabilityStartDate" date,
  "RepairCode" char(50),
  "CASREPID" char(5),
  "FullBillet" char(238) ) 
begin
  /*
2016-08-22 RJM
2019-02-06 AIM E-04592 B-20619
*/
  call "SWA"."SmartVesselReport"(@VesselIds,@StartDate,@EndDate)
end