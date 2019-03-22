create procedure "_LIT"."WorkItemsLibraryReferencesCostHistory"( 
  in @RowId char(512),
  in @OrderBy char(256) default null ) 
result( 
  "RowId" char(1024),
  "VesselName" char(80),
  "Availability" char(128),
  "Location" char(256),
  "WorkItem" char(25),
  "CAT" char(5),
  "Originator" char(128),
  "EstimatedCost" numeric(15,2),
  "ActualCost" numeric(15,2),
  "AwardedCost" numeric(15,2),
  "RFPCount" integer,
  "RFPCost" numeric(15,2),
  "IsServiceOrder" bit,
  "ContractAwardDate" date,
  "LibraryItemScheduledDate" date,
  "PMCompletionDate" date,
  "ContractNumber" char(25),
  "SpecificationTitle" char(128),
  "SpecificationRevision" char(25),
  "OrderBy" char(256) ) 
begin
  declare @VesselId smallint;
  declare @WorkItemLibraryId integer;
  declare @SQL long varchar;
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  if @WorkItemLibraryId is null then
    set @WorkItemLibraryId = -1
  end if;
  set @OrderBy = "ISNULL"(@OrderBy,'Location ASC');
  set @SQL
     = 'SELECT\x0A       RowId                                AS RowId,\x0A       VesselName                           AS VesselName,\x0A       Availability                         AS Availability,\x0A       Location                             AS Location,\x0A       WorkItem                             AS WorkItem,\x0A       CAT                                  AS CAT,\x0A       Originator                           AS Originator,\x0A       EstimatedCost                        AS EstimatedCost,\x0A       ActualCost                           AS ActualCost,\x0A       AwardedCost                          AS AwardedCost,\x0A       RFPCount                             AS RFPCount,\x0A       RFPCost                              AS RFPCost,\x0A       IsServiceOrder                       AS IsServiceOrder,\x0A       ContractAwardDate                    AS ContractAwardDate,\x0A       LibraryItemScheduledDate             AS LibraryItemScheduledDate,\x0A       PMCompletionDate                     AS PMCompletionDate,\x0A       ContractNumber                       AS ContractNumber,\x0A       SpecificationTitle                   AS SpecificationTitle,\x0A       SpecificationRevision                AS SpecificationRevision,\x0A             ''' || @OrderBy
     || '''         AS OrderBy\x0A        FROM LIT.WorkItemsLibraryReferencesCostHistory(' || @WorkItemLibraryId
     || ')\x0A       ORDER BY ' || @OrderBy;
  execute immediate with result set on @SQL
end