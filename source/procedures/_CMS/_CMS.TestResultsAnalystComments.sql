create procedure --RJM
"_CMS"."TestResultsAnalystComments"( 
  in @RowId char(1024) ) 
result( 
  "AnalystComments" long varchar ) 
begin
  /*
2018-06-20 RJM  E-04294 B-18300
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @TestResultId integer;
  declare @TestType char(25);
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
  set @TestType = "SWA"."KeyValuePairParse"(@RowId,'TestType');
  call "CMS"."TestResultsAnalystComments"(@VesselId,@EquipmentId,@TestResultId,@TestType)
end