create procedure "_NS5"."PrepareResultHeader"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "ResultText" long varchar,"ExpertTime" char(26) ) 
begin
  call "NS5"."PrepareResultHeader"(@VesselId,@EquipmentId,@TestResultId)
end