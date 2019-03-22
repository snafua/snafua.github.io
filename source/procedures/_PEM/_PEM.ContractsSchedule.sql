create procedure -- JHM
"_PEM"."ContractsSchedule"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "EstimatedBeginDate" date,
  "EstimatedEndDate" date,
  "ContractAwardDate" date,
  "DryDockDate" date,
  "ActualBeginDate" date,
  "ActualEndDate" date,
  "ReadyForSeaDate" date,
  "DryDockDays" integer,
  "FlagSchedule" integer,
  "FlagAward" integer,
  "FlagActual" integer,
  "FlagMilestones" integer,
  "FlagDuration" integer,
  "CanSave" integer ) 
begin
  /*
2018-06-12 JHM - E-04020 Update business rules to disable award date, scheduled start, completion and duration
*/
  call "PEM"."ContractsSchedule"(@VesselId,@ContractId)
end