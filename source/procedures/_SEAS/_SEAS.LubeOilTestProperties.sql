create procedure "_SEAS"."LubeOilTestProperties"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "VesselName" char(80),"VesselId" smallint,"MeasPtDesc" char(80),"OilSampleNo" char(50),"LabelNumber" char(50),"Spid" integer,"LaboratoryId" char(9),"LubricantName" char(50),"OilHours" integer,"EngineHours" integer,"DateSampled" char(10),"LabReceived" char(10),"LabReported" char(10),"DateLoaded" char(10),"MessageSent" char(10),"MSCAlert" char(20),"LabAlert" char(20),"LOXAlert" char(20),"ProductNumber" integer,"Mid" integer,"WearMetalCode" char(50),"MetaRecord" char(6) ) 
begin
  call "SEAS"."LubeOilTestProperties"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end