create procedure "_PEM"."WorkItemDelete"( 
  in @VesselId integer,
  in @WorkItemId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemDelete"(@VesselId,@WorkItemId)
end