create procedure -- JHM
"_TAR"."TransaltsServiceRequestItemSave"( 
  in @ParentRowId char(1024) ) 
result( 
  "RowId" char(1024),
  "RowIdChild" char(1024),
  "TitleBarDisplayChild" char(128),
  "ServiceRequestExternalId" char(128),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2017-12-21 RJM encoded ServiceRequestTitle in CALL SRM.ServiceRequestItemSave
2018-08-22 JHM Updated to call TAR.TransaltsServiceRequestItemSave
*/
  call "TAR"."TransaltsServiceRequestItemSave"(@ParentRowId)
end