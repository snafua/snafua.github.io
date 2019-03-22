create procedure "_SEAS"."MachineryHistoryLoad"( in @VesselId smallint,in @HSC varchar(12),in @DateRange char(25),in @Sort long varchar default '6 DESC' ) 
result( "VesselId" smallint,"EquipmentDescriptions" long varchar,"MachineryHistoryId" integer,"MachineryHistoryType" char(15),"MachineryHistoryTitle" char(50),"MachineryHistoryDate" timestamp ) 
begin
  call "SEAS"."MachineryHistoryLoad"(@VesselId,@HSC,@DateRange,@Sort)
end