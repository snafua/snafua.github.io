create procedure "_PEM"."WorkItemModificationEstimatedLaborHoursDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @LaborCategory char(25) ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationEstimatedLaborHoursDelete"(@VesselId,@WorkItemId,@WorkItemModId,@LaborCategory)
end