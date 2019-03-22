create procedure "_PEM"."WorkItemModificationEstimatedLaborHoursInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @LaborCategory char(25),
  in @LaborHours numeric(15,2) ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationEstimatedLaborHoursInsertUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@LaborCategory,@LaborHours)
end