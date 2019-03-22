create procedure --JBH
"_TAE"."ExecutionGeneral"( 
  in @RowId char(1024) ) 
result( 
  "PENGExecution" bit,
  "SFWLExecution" bit,
  "InstallingActivity" long varchar,
  "Comments" long varchar,
  "InstalledEquipment" long varchar,
  "NameplateInfo" long varchar,
  "ManualChanges" char(15),
  "DrawingChanges" char(15),
  "AllTSD" char(15),
  "ILSRepOnsite" bit,
  "ILSRepName" long varchar,
  "MASPComplete" bit,
  "TSDDistributed" char(15),
  "WorkComplete" bit ) 
begin
  /*
2018-11-15 JHM D-04171 Fixes for encoding inconsistencies between 3.1.1, 3.4.2, 3.4.4 and above
2019-02-11 JBH B-20551 Added SFWLExecution
*/
  declare @DoNotEncode bit;
  set @DoNotEncode = "SWA"."KeyValuePairParse"(@RowId,'DoNotEncode');
  call "TAE"."ExecutionGeneral"(@RowId,@DoNotEncode)
end