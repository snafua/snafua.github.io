create procedure "_PNG"."WorkItemLibrarySpecificationRevisions"( 
  in @Specificationid integer,
  in @OrderBy char(256) default null ) 
result( 
  "RelatedSpecificationId" integer,
  "RelatedSpecificationTitle" char(128),
  "RelatedSpecificationFileName" char(256),
  "RelatedSpecificationTimestamp" timestamp,
  "RelationshipType" char(25),
  "OrderBy" char(256) ) 
begin
  call "PNG"."WorkItemLibrarySpecificationRevisions"(@SpecificationId)
end