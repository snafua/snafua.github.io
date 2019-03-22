create procedure "_SEAS"."LubeOilToteboard"( in @Vessels long varchar default '',in @Sort long varchar default '12 DESC,7 DESC,9 ASC',in @Filter long varchar default '' ) 
result( "LabId" smallint,"VesselId" smallint,"VesselName" char(80),"SampleId" char(9),"MeasurementPointDescription" char(85),"LubricantDescription" char(23),"LabSeverityIndex" smallint,"LabSeverityDescription" char(20),"SampleDate" char(16),"Ferrogram" char(3),"CurrentUser" char(85),"CurrentStatus" char(20) ) 
begin
  call "SEAS"."LubeOilToteboard"(@Vessels,@Sort,@Filter)
end