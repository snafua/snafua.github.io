create procedure /*
CREATE PROCEDURE _PAV.AvailabilitiesSubGridContractSummary(
IN @RowId CHAR(256),
IN @OrderBy CHAR(256) DEFAULT NULL
)
RESULT(
RowId CHAR(256),
Contract CHAR(128),
ContractStatus CHAR(25),
WorkItems INTEGER,
LineItems INTEGER,
RFPs      INTEGER,
EstimatedCost NUMERIC(15,2),
AwardedCost NUMERIC(15,2),
ActualCost NUMERIC(15,2),
CanEdit BIT,
CanDelete BIT,
OrderBy CHAR(256)
)
BEGIN
CALL PAV.AvailabilitiesSubGridContractSummary(@RowId, @OrderBy);
END;

*/
--RJM 2013-06-26 Added OrderBy
"_PAV"."AvailabilitiesSubGridFunding"( 
  in @RowId char(256) default null,
  in @OrderBy char(256) default null ) 
result( "RowId" char(256),"ProjectCode" char(256),"TaskCode" char(256),"Description" char(256),"OrderBy" char(256) ) 
begin
  call "PAV"."AvailabilitiesSubGridFunding"(@RowId,@OrderBy)
end