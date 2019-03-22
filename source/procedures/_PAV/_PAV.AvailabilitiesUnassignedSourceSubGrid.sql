create procedure "_PAV"."AvailabilitiesUnassignedSourceSubGrid"( 
  in @NodeId char(256) default null,
  in @OrderBy char(256) default null ) 
result( 
  "RowId" char(256),
  "VRR" char(10),
  "Title" char(128),
  "OpenDate" date,
  "Priority" char(10),
  "RAC" integer,
  "ShoreStatus" char(10),
  "FORAC" char(20),
  "ResponseDate" date,
  "OrderBy" char(256),
  "CanEdit" bit ) 
begin
  call "PAV"."AvailabilitiesUnassignedSourceSubGrid"(@NodeId,@OrderBy)
end