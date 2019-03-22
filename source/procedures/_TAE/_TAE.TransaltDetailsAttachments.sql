create procedure --E-04763 D-04171
--RJM
"_TAE"."TransaltDetailsAttachments"( 
  in @RowId char(1024),
  in @IsEncoded bit default 0 ) 
result( 
  "RowId" char(1024),
  "AttachmentType" char(25),
  "FileType" char(25),
  "FileName" char(128),
  "FileSize" integer ) 
begin
  /*
2018-10-24 RJM Added @IsEncoded E-04763 D-04171
2018-11-15 JHM D-04171 Fixes for encoding inconsistencies between 3.1.1, 3.4.2, 3.4.4 and above
*/
  declare @DoNotEncode bit;
  set @DoNotEncode = "SWA"."KeyValuePairParse"(@RowId,'DoNotEncode');
  call "TAE"."TransaltDetailsAttachments"(@RowId,@IsEncoded,@DoNotEncode)
end