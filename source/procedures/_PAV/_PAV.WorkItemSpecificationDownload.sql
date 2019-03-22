create procedure -- JHM - E-03924, B-17104
"_PAV"."WorkItemSpecificationDownload"( 
  in @RowId char(1024) ) 
result( 
  "SpecificationData" long binary ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @SpecificationId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @SpecificationId = "SWA"."KeyValuePairParse"(@RowId,'SpecificationId');
  if(@SpecificationId is null) then
    select "SpecificationId"
      into @SpecificationId
      from "PNG"."ViewWorkItems"
      where "VesselId" = @VesselId
      and "WorkItemId" = @WorkItemId
  end if;
  call "PEM"."WorkItemSpecificationDownload"(@VesselId,@WorkItemId,@SpecificationId)
end