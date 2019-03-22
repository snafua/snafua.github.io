create procedure "_PEM"."ContractsMilestoneUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @MilestoneId integer,
  in @MilestoneScheduleDate date,
  in @MilestoneRevisedDate date,
  in @MilestoneCompletionDate date,
  in @MilestoneComments char(256) ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractsMilestoneUpdate"(@VesselId,@ContractId,@MilestoneId,@MilestoneScheduleDate,@MilestoneRevisedDate,@MilestoneCompletionDate,@MilestoneComments)
end