create procedure "_PNG"."WorkItemLibrarySpecUsage"( 
  in @SpecificationId integer,
  in @OrderBy char(128) default '[Date] DESC,VesselName ASC' ) 
result( 
  "VesselName" char(80),
  "Date" date,
  "Location" char(128),
  "Cost" numeric(15,2),
  "Number" char(25),
  "VesselId" smallint,
  "SpecificationId" integer,
  "OrderBy" char(128) ) 
begin
  call "PNG"."WorkItemLibrarySpecUsage"(@SpecificationId,@OrderBy)
end