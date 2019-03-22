create procedure "_PEM"."WorkItemSpecificationDownload"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @SpecificationId integer ) 
result( 
  "SpecificationData" long binary ) 
begin
  call "PEM"."WorkItemSpecificationDownload"(@VesselId,@WorkItemId,@SpecificationId)
end