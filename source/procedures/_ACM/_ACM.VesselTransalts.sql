create procedure --E-03401
--RJM
"_ACM"."VesselTransalts"( 
  in @Vessel char(1024),
  in @OrderBy char(100) default null ) 
result( 
  "TransaltTitle" char(128),
  "TransaltNumber" char(25),
  "TransaltId" integer ) 
begin
  /*
2018-10-04 RJM  B-19456 E-03401
*/
  declare @VesselId integer;
  if "ISNUMERIC"(@Vessel) = 1 then
    set @VesselId = @Vessel
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@Vessel,'VesselId')
  end if;
  call "ACM"."VesselTransalts"(@VesselId,@OrderBy)
end