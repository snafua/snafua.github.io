create procedure --B-20329
--RJM
"_TAR"."TransaltCompletionRelatedItems"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "RelatedItemId" char(256),
  "RelatedItemTitle" char(128),
  "RelatedItemType" char(25),
  "WorkItemId" integer ) 
begin
  /*
2018-12-11 RJM Created B-20329
*/
  declare @VesselId integer;
  declare @TransaltId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @TransaltId = "SWA"."KeyValuePairParse"(@RowId,'TransaltId');
  call "TAR"."TransaltCompletionRelatedItems"(@VesselId,@TransaltId)
end