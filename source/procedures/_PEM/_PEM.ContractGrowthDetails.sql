create procedure "_PEM"."ContractGrowthDetails"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "AwardLaborRate" numeric(15,2),
  "AGRLaborRate" numeric(15,2),
  "AwardedAGRHours" numeric(15,2),
  "AGRMaterial" numeric(15,2),
  "AGRHoursSettled" numeric(15,2),
  "AGRHoursRemaining" numeric(15,2),
  "AGRHoursObligated" numeric(15,2),
  "FlagAward" integer,
  "FlagGrowth" integer,
  "CanSave" integer ) 
begin
  call "PEM"."ContractGrowthDetails"(@VesselId,@ContractId)
end