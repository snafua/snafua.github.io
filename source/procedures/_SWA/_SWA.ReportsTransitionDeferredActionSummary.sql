create procedure --E-04527   B-19357
--RJM
"_SWA"."ReportsTransitionDeferredActionSummary"( 
  in @VesselIds long varchar,
  in @StartDate date,
  in @EndDate date ) 
result( 
  "Billet" char(240),
  "DeferralDate" date,
  "DeferralReason" char(50),
  "EquipmentDescription" char(80),
  "Frequency" char(50),
  "ItemComments" long varchar,
  "TaskId" char(25),
  "TaskStatus" char(20),
  "Title" char(50),
  "VesselId" integer,
  "VesselName" char(80) ) 
begin
  /*
2018-09-20 RJM    E-04527   B-19357
*/
  call "SWA"."ReportsTransitionDeferredActionSummary"(@VesselIds,@StartDate,@EndDate)
end