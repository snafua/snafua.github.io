create procedure "_PEM"."ContractsMilestones"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "Milestone" char(128),
  "MilestoneScheduleDate" date,
  "MilestoneRevisedDate" date,
  "MilestoneCompletionDate" date,
  "MilestoneComments" char(256),
  "MileStoneId" integer,
  "CanDelete" bit ) 
begin
  call "PEM"."ContractsMilestones"(@VesselId,@ContractId)
end