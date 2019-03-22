create procedure "_PEM"."WorkItemModificationEstimatedLaborHours"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer ) 
result( 
  "LaborCategory" char(25),
  "LaborHours" numeric(15,2),
  "FlagLaborCategory" integer ) 
begin
  call "PEM"."WorkItemModificationEstimatedLaborHours"(@VesselId,@WorkItemId,@WorkItemModId)
end