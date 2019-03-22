create procedure "_PNG"."WorkRequestAdditionalDetails"( 
  in @VesselId integer,
  in @WorkRequestId integer ) 
result( 
  "ItemType" char(10),
  "ItemName" char(25),
  "ItemValue" char(128) ) 
begin
  call "PNG"."WorkRequestAdditionalDetails"(@VesselId,@WorkRequestId)
end