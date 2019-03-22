create procedure --AIM
"_PEM"."WorkItemModificationCancellationInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @WorkItemCancellationReason char(25),
  in @WorkItemCancellationComment long varchar default null ) 
result( 
  "VesselId" integer,
  "WorkItemId" integer,
  "WorkItemModId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-12-19 AIM E-04599 B-19898
*/
  call "PEM"."WorkItemModificationCancellationInsertUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@WorkItemCancellationReason,@WorkItemCancellationComment)
end