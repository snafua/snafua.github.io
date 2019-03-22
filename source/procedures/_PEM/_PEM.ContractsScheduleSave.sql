create procedure "_PEM"."ContractsScheduleSave"( 
  in @VesselId integer,
  in @ContractId integer,
  in @EstimatedBeginDate date,
  in @EstimatedEndDate date,
  in @ContractAwardDate date,
  in @DryDockDate date,
  in @ActualBeginDate date,
  in @ActualEndDate date,
  in @ReadyForSeaDate date,
  in @DryDockDays integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractsScheduleSave"(@VesselId,@ContractId,@EstimatedBeginDate,@EstimatedEndDate,@ContractAwardDate,@DryDockDate,@ActualBeginDate,@ActualEndDate,@ReadyForSeaDate,@DryDockDays)
end