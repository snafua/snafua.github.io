create procedure "_SEAS"."ChemistryCommentsSave"( 
  in @VesselId smallint,
  in @LogId smallint,
  in @EquipmentId integer,
  in @Month char(10),
  in @Priority char(20),
  in @Comments long varchar,
  in @Manual bit ) 
begin
  call "SEAS"."ChemistryCommentsSave"(@VesselId,@LogId,@EquipmentId,@Month,@Priority,@Comments,@Manual)
end