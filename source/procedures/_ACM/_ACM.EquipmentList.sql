create procedure --JLD
"_ACM"."EquipmentList"( 
  in @RowId char(1024),
  in @EquipmentRowIds long varchar default null,
  in @RowType char(25) default null ) 
result( 
  "EncodedEquipmentRowId" char(1024),
  "EquipmentDescription" char(120),
  "EquipmentId" integer,
  "EquipmentRowId" char(1024),
  "IsSelected" bit ) 
begin
  /*
2018-08-08 RJM
2018-09-27 JLD E-04166 B-19397
2019-02-25 JLD E-04621 D-04257 WorkRequestId is required, but not always passed in which causes it to break. 
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "ACM"."EquipmentList"(@VesselId,@WorkRequestId,@EquipmentRowIds)
end