create procedure "_PEM"."ContractsMilestoneInsert"( 
  in @VesselId integer,
  in @ContractId integer,
  in @Milestone char(128),
  in @MilestoneScheduleDate date,
  in @MilestoneRevisedDate date,
  in @MilestoneCompletionDate date,
  in @MilestoneComments char(256) ) 
result( 
  "MilestoneId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractsMilestoneInsert"(@VesselId,@ContractId,@Milestone,@MilestoneScheduleDate,@MilestoneRevisedDate,@MilestoneCompletionDate,@MilestoneComments)
end