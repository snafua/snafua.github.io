create procedure "_PNG"."ContractsMilestones"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "VesselId" integer,
  "ContractId" integer,
  "MilestoneId" integer,
  "TITLE" char(128),
  "ScheduledDate" date,
  "RevisedDate" date,
  "CompletionDate" date,
  "Notes" char(256) ) 
begin
  call "PNG"."ContractsMilestones"(@VesselId,@ContractId)
end