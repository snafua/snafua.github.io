create procedure "_VTL"."VTLDocumentsInsertUpdate"( in @DocumentId integer,
  in @DocumentTypeId tinyint,
  in @DocumentFileName varchar(255),
  in @DocumentTitle varchar(255),
  in @ElectronicCopyExists char(1),
  in @HardCopyExists char(1),
  in @ITAR char(1),
  in @CreateTimeStamp timestamp,
  in @CreatedByID integer,
  in @LastModifiedTimeStamp timestamp,
  in @LastModifiedByID integer,
  in @Revision char(10),
  in @RevisionDate date,
  in @FileSize integer,
  in @DocumentIsCancelled char(1),
  in @LatestRevision char(1) ) 
result( 
  "DocumentId" integer,
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  declare @Success bit;
  declare @ErrorMessage long varchar;
  declare @RequestId integer;
  declare @NewDocumentId integer;
  declare @NewDocumentTitle varchar(255);
  declare @ManufacturerId integer;
  declare @ModelId integer;
  declare @NewDocumentNumber varchar(255);
  declare @GroupNumber varchar(3);
  declare @VesselId integer;
  declare @Change char(10);
  declare @TAltAssociated varchar(3);
  declare @SRDDrawing bit;
  set @Success = 1;
  if(@DocumentId is not null) then
    set @CreateTimeStamp = (select "CreateTimeStamp" from "VTL"."V_DocumentsItems" where "DocumentId" = @DocumentId);
    set @CreatedByID = (select "CreatedByID" from "VTL"."V_DocumentsItems" where "DocumentId" = @DocumentId)
  else
    set @CreateTimeStamp = "NOW"();
    set @CreatedByID = "SWA"."UserId"()
  end if;
  set @LastModifiedTimeStamp = "NOW"();
  set @LastModifiedByID = "SWA"."UserId"();
  if(@DocumentId is null and @DocumentTypeId = 7) then
    set @RequestId = (select "VTL"."CheckTechManualNumber"(@DocumentFileName) from "dummy")
  end if;
  if(@DocumentId is null and @DocumentTypeId = 3) then
    set @RequestId = (select "VTL"."CheckDrawingNumber"(@DocumentFileName) from "dummy")
  end if;
  set @NewDocumentId = (select "VTL"."F_VTLDocumentsInsert"(@DocumentId,
      @DocumentTypeId,
      @DocumentFileName,
      @DocumentTitle,
      @ElectronicCopyExists,
      @HardCopyExists,
      @ITAR,
      @CreateTimeStamp,
      @CreatedByID,
      @LastModifiedTimeStamp,
      @LastModifiedByID,
      @Revision,
      @RevisionDate,
      @FileSize,
      @DocumentIsCancelled,
      @LatestRevision));
  if(@RequestId is not null and @DocumentTypeId = 7) then
    select "NewTechManualTitle" into @NewDocumentTitle from "VTL"."RequestTechManualNumber" where @RequestId = "RequestTechManualNumberId";
    select "ManufacturerId" into @ManufacturerId from "VTL"."RequestTechManualNumber" where @RequestId = "RequestTechManualNumberId";
    select "EquipmentModelId" into @ModelId from "VTL"."RequestTechManualNumber" where @RequestId = "RequestTechManualNumberId";
    select "Revision" into @Revision from "VTL"."RequestTechManualNumber" where @RequestId = "RequestTechManualNumberId";
    select "Change" into @Change from "VTL"."RequestTechManualNumber" where @RequestId = "RequestTechManualNumberId";
    set @NewDocumentNumber = (select(if "ExistingManual" = 1 then "ExistingManualNum" else "NiinNumber" endif) as "DocumentNumber" from "VTL"."RequestTechManualNumber" where @RequestId = "RequestTechManualNumberId");
    if(@NewDocumentTitle is not null) then
      update "VTL"."Documents" set "DocumentTitle" = @NewDocumentTitle,"Revision" = @Revision where "DocumentId" = @NewDocumentId
    end if;
    if(@Change is not null) then
      insert into "VTL"."DocumentsManuals"( "DocumentId","Change","Distribution","TMMA" ) values( @NewDocumentId,@Change,0,0 ) 
    end if;
    update "VTL"."DocumentsManufacturers" set "ManufacturerId" = @ManufacturerId where "DocumentId" = @NewDocumentId;
    update "VTL"."DocumentsModels" set "ModelId" = @ModelId where "DocumentId" = @NewDocumentId;
    insert into "VTL"."DocumentsNumbers"( "DocumentId","DocumentNumberTypeId","DocumentIdNumber" ) values( @NewDocumentId,1,@NewDocumentNumber ) ;
    update "VTL"."RequestTechManualNumber" set "Uploaded" = 1 where "RequestTechManualNumberId" = @RequestId;
    insert into "VTL"."DocumentsVTLVessels"( "VTLVesselId","DocumentId" ) select "VTLVesselID",@NewDocumentId from "VTL"."RequestTechManualVTLVessels" where @RequestId = "RequestTechManualId"
  end if;
  if(@RequestId is not null and @DocumentTypeId = 3) then
    select "RequestDrawingNumberDetailTitle" into @NewDocumentTitle from "VTL"."RequestDrawingNumberDetails" where @RequestId = "RequestDrawingNumberDetailId";
    set @NewDocumentNumber = (select "DrawingNumber" from "VTL"."RequestDrawingNumberDetails" where @RequestId = "RequestDrawingNumberDetailId");
    set @GroupNumber = (select "GroupNumber" from "VTL"."RequestDrawingNumberDetails" where @RequestId = "RequestDrawingNumberDetailId");
    set @TAltAssociated = (select "TAltAssociated" from "VTL"."RequestDrawingNumberDetails" where @RequestId = "RequestDrawingNumberDetailId");
    set @SRDDrawing = (select "SRDDrawing" from "VTL"."RequestDrawingNumberDetails" where @RequestId = "RequestDrawingNumberDetailId");
    set @Revision = (select "Revision" from "VTL"."RequestDrawingNumberDetails" where @RequestId = "RequestDrawingNumberDetailId");
    set @Change = (select "Change" from "VTL"."RequestDrawingNumberDetails" where @RequestId = "RequestDrawingNumberDetailId");
    if(@NewDocumentTitle is not null) then
      update "VTL"."Documents" set "DocumentTitle" = @NewDocumentTitle,"Revision" = "isnull"(@Revision,'') where "DocumentId" = @NewDocumentId
    end if;
    if(@Change is not null) then
      insert into "VTL"."DocumentsManuals"( "DocumentId","Change","Distribution","TMMA" ) values( @NewDocumentId,@Change,0,0 ) 
    end if;
    if(@GroupNumber is not null or @SRDDrawing is not null) then
      if @SRDDrawing is null then
        set @SRDDrawing = 0
      end if;
      insert into "VTL"."DocumentsDrawings"( "DocumentId","GroupNumber","SRD" ) values( @NewDocumentId,@GroupNumber,@SRDDrawing ) 
    end if;
    insert into "VTL"."DocumentsNumbers"( "DocumentId","DocumentNumberTypeId","DocumentIdNumber" ) values( @NewDocumentId,1,@NewDocumentNumber ) ;
    for "emp" as "emp_curs" dynamic scroll cursor for
      select "VTLVesselId" as "VesselId"
        from "VTL"."VesselRequestDrawingNumberDetails"
        where "RequestDrawingNumberDetailId" = @RequestId
    do
      insert into "VTL"."DocumentsVTLVessels"( "DocumentId","VTLVesselId" ) values( @NewDocumentId,"VesselId" ) 
    end for;
    deallocate cursor "emp_curs";
    if(@TAltAssociated is not null) then
      insert into "VTL"."DocumentsTransalts"( "DocumentId","TransAltNumber" ) values( @NewDocumentId,@TAltAssociated ) 
    end if;
    update "VTL"."RequestDrawingNumberPoll" set "DrawingNumberPollStatus" = 'Used' where "DrawingNumber" = @NewDocumentNumber
  end if;
  select @NewDocumentId as "DocumentId",
    @Success as "Success",
    "isnull"(@ErrorMessage,'Saved Successfully') as "ErrorMessage" from "sys"."dummy"
end