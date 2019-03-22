create procedure "_PEM"."WorkItemEstimateDownload"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @EstimateId integer ) 
result( 
  "EstimateData" long binary ) 
begin
  call "PEM"."WorkItemEstimateDownload"(@VesselId,@WorkItemId,@EstimateId)
end