create procedure "_VTL"."DocumentsItemsExport"( 
  in @NodeId char(512) default null,
  in @OrderBy char(512) default null,
  in @UsePaging bit default null,
  in @RowsPerPage integer default null,
  in @PageToDisplay integer default null ) 
result( 
  "RowId" char(1024),
  "DocumentId" integer,
  "DocumentTypeId" integer,
  "DocumentType" char(50),
  "FileExtension" char(4),
  "PDF" bit,
  "AUTOCAD" bit,
  "FileSize" char(20),
  "DocumentFileName" char(255),
  "DocumentTitle" char(255),
  "ElectronicCopyExists" bit,
  "HardCopyExists" bit,
  "ITAR" char(1),
  "ITARDisplay" char(259),
  "CreateTimeStamp" timestamp,
  "CreatedByID" integer,
  "CreatedBy" char(256),
  "LastModifiedTimeStamp" timestamp,
  "LastModifiedByID" integer,
  "LastModifiedBy" char(255),
  "DocumentNumber" char(50),
  "DocumentAltNumber" char(50),
  "DocumentNSN" char(50),
  "SearchNumber" char(150),
  "Revision" char(10),
  "RevisionDate" date,
  "DocumentIsCancelled" bit,
  "EquipmentClassificationId" integer,
  "EquipmentClassificationDescription" char(50),
  "BulletinTypeID" integer,
  "BulletinType" char(100),
  "GroupNumber" char(3),
  "GroupDescription" char(100),
  "GroupDisplay" char(106),
  "Sheet" char(4),
  "SRD" bit,
  "Salvage" bit,
  "Design" bit,
  "Change" char(10),
  "TMMA" bit,
  "ManufacturerId" integer,
  "ManufacturerName" char(80),
  "ModelNumbers" char(250),
  "ModelIDs" integer,
  "DocumentRemarks" long varchar,
  "TransAltsAssociated" long varchar,
  "LatestRevision" bit,
  "ShipsAssociated" long varchar,
  "InDownloadList" bit,
  "TotalRows" integer,
  "CurrentPage" integer,
  "TotalPages" integer ) 
begin
  set @UsePaging = 1;
  set @RowsPerPage = 65500;
  set @PageToDisplay = 1;
  if @NodeId is null then
    set @NodeId = "VTL"."SavedNodeIdSelect"()
  end if;
  call "VTL"."DocumentsItems"(
  @NodeId,
  @OrderBy,
  @UsePaging,
  @RowsPerPage,
  @PageToDisplay,0)
end