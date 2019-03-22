create procedure "_PEM"."WorkItemModificationReportDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @WorkItemReportId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationReportDelete"(@VesselId,@WorkItemId,@WorkItemModId,@WorkItemReportId)
end