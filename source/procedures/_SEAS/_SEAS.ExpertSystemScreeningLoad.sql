create procedure "_SEAS"."ExpertSystemScreeningLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,
  in @ExpertSystemResultsId timestamp default null,
  in @PrevOrNext integer default null ) 
result( "ExpertSystemResultsId" timestamp,"MachineName" char(80),"MachineId" integer,"DataCollectionTimestamp" timestamp,"ExpertSystemTimestamp" timestamp,"ScreeningSheet" long varchar,"ExpertSystemComments" long varchar,"HasPrevious" bit,"HasNext" bit ) 
begin
  call "SEAS"."ExpertSystemScreeningLoad"(@VesselId,@EquipmentId,@TestId,@ExpertSystemResultsId,@PrevOrNext)
end