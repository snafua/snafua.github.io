create procedure "_TAE"."SpecificationRevisions"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "Originator" char(25),
  "SpecificationFileName" char(256),
  "SpecificationRevisionNumber" char(10),
  "ApplicableVessels" long varchar ) 
begin
  call "TAE"."SpecificationRevisions"(@RowId)
end