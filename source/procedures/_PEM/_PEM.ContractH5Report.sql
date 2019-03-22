create procedure --B-20205 E-04753
--RJM
"_PEM"."ContractH5Report"( 
  in @VesselId integer,
  in @ContractId integer,
  in @Quarter1StartDate date default null,
  in @Quarter1EndDate date default null,
  in @Quarter1PercentConsumed numeric(6,2) default 100,
  in @Quarter2StartDate date default null,
  in @Quarter2EndDate date default null,
  in @Quarter2PercentConsumed numeric(6,2) default 75,
  in @Quarter3StartDate date default null,
  in @Quarter3EndDate date default null,
  in @Quarter3PercentConsumed numeric(6,2) default 50,
  in @Quarter4StartDate date default null,
  in @Quarter4EndDate date default null,
  in @Quarter4PercentConsumed numeric(6,2) default 25 ) 
result( 
  "VesselName" char(80),
  "ContractNumber" char(25),
  "ContractorName" char(128),
  "Quarter1Label" char(50),
  "Quarter1PercentConsumed" numeric(6,2),
  "Quarter1StartDate" date,
  "Quarter1EndDate" date,
  "Quarter1UsedHours" numeric(15,2),
  "Quarter1ScheduledHours" numeric(15,2),
  "Quarter2Label" char(50),
  "Quarter2PercentConsumed" numeric(6,2),
  "Quarter2StartDate" date,
  "Quarter2EndDate" date,
  "Quarter2UsedHours" numeric(15,2),
  "Quarter2ScheduledHours" numeric(15,2),
  "Quarter3Label" char(50),
  "Quarter3PercentConsumed" numeric(6,2),
  "Quarter3StartDate" date,
  "Quarter3EndDate" date,
  "Quarter3UsedHours" numeric(15,2),
  "Quarter3ScheduledHours" numeric(15,2),
  "Quarter4Label" char(50),
  "Quarter4PercentConsumed" numeric(6,2),
  "Quarter4StartDate" date,
  "Quarter4EndDate" date,
  "Quarter4UsedHours" numeric(15,2),
  "Quarter4ScheduledHours" numeric(15,2) ) 
begin
  /*
2018-11-28 RJM B-20205 E-04753 created
*/
  set @Quarter1PercentConsumed = "ISNULL"(@Quarter1PercentConsumed,100);
  set @Quarter2PercentConsumed = "ISNULL"(@Quarter2PercentConsumed,75);
  set @Quarter3PercentConsumed = "ISNULL"(@Quarter3PercentConsumed,50);
  set @Quarter4PercentConsumed = "ISNULL"(@Quarter4PercentConsumed,25);
  call "PEM"."ContractH5Report"(@VesselId,@ContractId,@Quarter1StartDate,@Quarter1EndDate,@Quarter1PercentConsumed,@Quarter2StartDate,@Quarter2EndDate,
  @Quarter2PercentConsumed,@Quarter3StartDate,@Quarter3EndDate,@Quarter3PercentConsumed,@Quarter4StartDate,@Quarter4EndDate,@Quarter4PercentConsumed)
end