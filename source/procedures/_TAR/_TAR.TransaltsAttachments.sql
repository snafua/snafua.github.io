create procedure -- JHM - D-04171
"_TAR"."TransaltsAttachments"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "AttachmentId" integer,
  "AttachmentType" char(25),
  "AttachmentFileType" char(25),
  "AttachmentFileName" char(128),
  "FileSize" char(20),
  "EncodedFileName" char(256) ) 
begin
  /*
2017-05-19 RJM added FileName to result set for standardization or something
2018-11-15 JHM D-04171 Fixes for encoding inconsistencies between 3.1.1, 3.4.2, 3.4.4 and above
*/
  declare @DoNotEncode bit;
  set @DoNotEncode = "SWA"."KeyValuePairParse"(@RowId,'DoNotEncode');
  call "TAR"."TransaltsAttachments"(@RowId,@DoNotEncode)
end