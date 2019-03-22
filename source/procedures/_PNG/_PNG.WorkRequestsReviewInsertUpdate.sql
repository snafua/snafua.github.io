create procedure "_PNG"."WorkRequestsReviewInsertUpdate"( 
  in @VesselId integer,
  in @WorkRequestId integer,
  in @WorkRequestReviewStatus char(10) ) 
begin
  call "PNG"."WorkRequestsReviewInsertUpdate"(@VesselId,@WorkRequestId,@WorkRequestReviewStatus)
end