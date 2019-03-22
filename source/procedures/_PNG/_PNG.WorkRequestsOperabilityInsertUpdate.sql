create procedure "_PNG"."WorkRequestsOperabilityInsertUpdate"( 
  in @RowId char(256),
  in @SystemEquipmentFailure bit,
  in @OperationalPercent smallint default 0 ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "PNG"."WorkRequestsOperabilityInsertUpdate"(@VesselId,@WorkRequestId,@SystemEquipmentFailure,@OperationalPercent)
end