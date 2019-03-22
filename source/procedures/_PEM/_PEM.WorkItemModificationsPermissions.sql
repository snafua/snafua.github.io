create procedure "_PEM"."WorkItemModificationsPermissions"( 
  in @VesselId integer,
  in @WorkItemId integer ) 
result( 
  "FlagModifications" integer ) 
begin
  call "PEM"."WorkItemModificationsPermissions"(@VesselId,@WorkItemId)
end