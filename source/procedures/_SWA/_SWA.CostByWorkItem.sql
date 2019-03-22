create procedure "_SWA"."CostByWorkItem"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "WorkItemNumber" char(25),
  "RFP" char(25),
  "CAT" char(5),
  "Title" char(128),
  "GrandTotal" decimal(15,2),
  "RFPTotal" decimal(15,2),
  "ActualTotal" decimal(15,2),
  "Change" decimal(15,2),
  "Comp" decimal(15,2),
  "ProgressedAmt" decimal(15,2),
  "TotalPA" decimal(15,2),
  "VesselName" char(80),
  "Contract" char(25),
  "HoldBack" decimal(15,2) ) 
begin
  call "SWA"."CostByWorkItem"(@VesselId,@ContractId)
end