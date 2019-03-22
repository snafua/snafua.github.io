create procedure "_PEM"."WorkItemModificationDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationDelete"(@VesselId,@WorkItemId,@WorkItemModId)
end