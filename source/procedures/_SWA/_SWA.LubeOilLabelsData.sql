create procedure --JLD
"_SWA"."LubeOilLabelsData"( 
  in @GridRowIds long varchar,
  in @PrintMultipleLabels bit default 0 ) 
result( 
  "LabelRowId" char(1024),
  "Barcode" char(17),
  "VesselName" char(80),
  "EquipmentDesc" char(80),
  "SamplePoint" char(50),
  "LubeOil" char(50),
  "LabelSeq" integer ) 
begin
  /*
2018-01-09 RJM
2018-05-10 JLD E-03757 B-17960 Added support for PrintMultipleLabels
*/
  call "SWA"."LubeOilLabelsData"(@GridRowIds,@PrintMultipleLabels)
end