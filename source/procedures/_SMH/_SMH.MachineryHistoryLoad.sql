create procedure "_SMH"."MachineryHistoryLoad"( in @VesselId smallint,in @HSC varchar(12),in @DateRange char(25) ) 
result( "VesselId" smallint,"EquipmentDescriptions" long varchar,"MachineryHistoryId" integer,"MachineryHistoryType" char(15),"MachineryHistoryTitle" char(50),"MachineryHistoryDate" timestamp,"EquipmentId" integer ) 
begin
  call "SMH"."MachineryHistoryLoad"(@VesselId,@HSC,@DateRange)
end