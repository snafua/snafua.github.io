create procedure --E-04408
--RJM
"_TAR"."CanAddComment"( 
  in @RowId char(1024) ) 
result( 
  "CanAddComment" bit ) 
begin
  declare @TransaltId integer;
  set @TransaltId = "SWA"."KeyValuePairParse"(@RowId,'TransaltId');
  call "TAR"."CanAddComment"(@TransaltId)
end