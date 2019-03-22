create procedure --JLD
"_PNG"."WorkRequestItems"( 
  in @NodeId char(256) default null,
  in @OrderBy char(256) default null,
  in @IsLimited bit default 1,
  in @Base64Encode bit default 0 ) 
result( 
  "RowId" char(1024),
  "VesselId" integer,
  "VesselName" char(128),
  "RepairExternalId" char(10),
  "Title" char(128),
  "Disposition" char(20),
  "FORAC" char(20),
  "ShoreStatus" char(20),
  "ResponseDate" date,
  "CompletionDate" date,
  "ShipStatus" char(20),
  "PEComments" long varchar,
  "Availability" char(25),
  "Contract" char(25),
  "WorkItem" char(25),
  "RepairOpenDate" date,
  "RepairPriorityCode" char(20),
  "RepairRAC" integer,
  "WorkRequestId" integer,
  "CasRepId" char(5),
  "Originator" char(256),
  "StartDate" date,
  "WRHasNarrative" integer,
  "IsArchived" bit,
  "CanEdit" bit,
  "OrderBy" char(1024),
  "TotalRows" integer,
  "CasRepRating" char(5) ) 
begin
  /*
2016-09-01 RJM Same As _PNG.WorkRequestItems but calls PNG.WorkRequestItemsV2 that Base64 encodes PEComments
2019-01-25 JLD E-04885 B-20549 Fixed Performance Issues
*/
  if @Base64Encode is null then
    set @Base64Encode = 0
  end if;
  call "PNG"."WorkRequestItems"(@NodeId,@OrderBy,@IsLimited,@Base64Encode)
end