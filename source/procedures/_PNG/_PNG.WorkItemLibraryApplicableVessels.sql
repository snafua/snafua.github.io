create procedure /*
--2013-07-01
ALTER PROCEDURE "_PNG"."VoyageRepairRequestWorkItems" (
IN @VesselId    INTEGER,
IN @ContractId  INTEGER
)
RESULT (
WorkItemId   INTEGER,
WorkItemText CHAR(20)
)
BEGIN
CALL PNG.VoyageRepairRequestWorkItems( @VesselId, @ContractId )
END
*/
-- Procedure _PNG.WorkItemLibraryApplicableVessels.sql
-- RJM 2013-07-05 Created
--2013-07-08 Added Result set
"_PNG"."WorkItemLibraryApplicableVessels"( 
  in @WorkItemLibraryId integer,
  in @OrderBy char(128) default 'VesselName ASC' ) 
result( 
  "VesselId" smallint,
  "VesselName" char(80),
  "OrderBy" char(256) ) 
begin
  --Returns all vessels using WorkItemsLibrary WorkItemLibraryId
  call "PNG"."WorkItemLibraryApplicableVessels"(@WorkItemLibraryId,@OrderBy)
end