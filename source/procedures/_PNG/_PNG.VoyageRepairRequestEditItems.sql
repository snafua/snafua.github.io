create procedure "_PNG"."VoyageRepairRequestEditItems"( 
  in @VesselId integer,
  in @WorkRequestIds long varchar,
  in @Base64Encode bit default 0 ) 
result( 
  "ShoreStatusValue" char(30),
  "DispositionValue" char(30),
  "FORACValue" char(30),
  "RespDateValue" char(30),
  "CompDateValue" char(30),
  "WorkItemTitleValue" char(128),
  "AvailabilityValue" char(30),
  "WorkPackValue" char(30),
  "WorkItemValue" char(30),
  "CommentsValue" long varchar,
  "CostValue" numeric(15,2),
  "CanEdit" integer,
  "SpecificationValue" char(30),
  "SpecificationFileNameValue" char(256),
  "EstimateValue" char(30),
  "EstimateFileNameValue" char(256) ) 
begin
  set @Base64Encode = "ECO"."CheckNull"(@Base64Encode);
  if @Base64Encode is null then
    set @Base64Encode = 0
  end if;
  if "CHARINDEX"(',',@WorkRequestIds) = 0 then
    call "PNG"."VoyageRepairRequestEditItem"(@VesselId,@WorkRequestIds,@Base64Encode)
  else
    call "PNG"."VoyageRepairRequestEditItems"(@VesselId,@WorkRequestIds,@Base64Encode)
  end if
end