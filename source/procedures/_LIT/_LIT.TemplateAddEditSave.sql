create procedure -- JHM
"_LIT"."TemplateAddEditSave"( 
  in @Title char(256),
  in @SWBS char(4),
  in @WorkItemNumber char(50),
  in @SpecificationId integer default null,
  in @SpecificationFileName char(256) default null,
  in @SpecificationDocument long varchar default null,
  in @SpecificationTitle char(125) default null,
  in @SpecificationFileDate timestamp default null,
  in @ExpenditureType char(10),
  in @LaborHours numeric(15,2) default null,
  in @LaborRate numeric(15,2) default null,
  in @LaborTotal numeric(15,2) default null,
  in @OtherDirect numeric(15,2) default null,
  in @EstimateId integer default null,
  in @EstimateFileName char(128) default null,
  in @EstimateDocument long varchar default null,
  in @EstimateTitle char(125) default null,
  in @EstimateFileDate timestamp default null,
  in @AvailabilityTypeJSON long varchar default '',
  in @AttachmentDataJSON long varchar default '',
  in @DeletedAttachmentIds long varchar default null,
  in @SpecificationDocumentDelete bit default 0,
  in @EstimateDocumentDelete bit default 0,
  in @Module char(25) default 'Library',
  in @WorkItemLibraryId integer default null,
  in @WorkItemCategory char(5) default null,
  in @VesselStr char(1024) default null,
  in @WorkItemLibraryType char(25) default null,
  in @IsEncoded bit default null,
  in @WorkItemNumberEncoded bit default 0,
  in @CategoryCombo char(5) default null ) 
result( 
  "RowId" char(256),
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  /*
2017-05-10 RJM widened @Title, @WorkItemNumber for base64 encoded values
2017-06-09 RJM Added WorkItemLibraryId to returned RowId
2018-05-22 JHM E-03966, B-18116 Added @WorkItemNumberEncoded and decode for WorkItemNumber if set to 1
2018-10-17 JHM E-04621 B-18117 Added @CategoryCombo to account for misnamed parameter from the front end
2018-12-04 JHM Updated WorkItemLibraryType to account for bad data from the front end
*/
  declare @SQL long varchar;
  declare @Success bit;
  declare @ErrorMessage char(3000);
  declare @RowId char(256);
  declare @VesselId smallint;
  declare @ExpenditureTypeCodeStr char(10);
  declare @AttachmentId integer;
  set @Module = "ISNULL"(@Module,'Library');
  set @SpecificationID = "ECO"."CheckNull"(@SpecificationId);
  set @EstimateId = "ECO"."CheckNull"(@EstimateId);
  set @WorkItemLibraryId = "ECO"."CheckNull"(@WorkItemLibraryId);
  if("ISNUMERIC"(@SpecificationId) = 0) then
    set @SpecificationId = null
  end if;
  if("ISNUMERIC"(@EstimateId) = 0) then
    set @EstimateId = null
  end if;
  if(@ExpenditureType is not null) then
    set @ExpenditureTypeCodeStr = cast(@ExpenditureType as char(10))
  end if;
  if(@WorkItemCategory is null) and(@CategoryCombo is not null) then
    set @WorkItemCategory = @CategoryCombo
  end if;
  if(@WorkItemLibraryType = 'MaintenanceTemplate') then
    set @WorkItemLibraryType = 'Maintenance'
  end if;
  call "LIT"."TemplateAddEditSave"(
  @Title,
  @SWBS,
  @WorkItemNumber,
  @SpecificationID,
  @SpecificationFileName,
  @SpecificationDocument,
  @SpecificationTitle,
  @SpecificationFileDate,
  @ExpenditureType,
  @LaborHours,
  @LaborRate,
  @LaborTotal,
  @OtherDirect,
  @EstimateId,
  @EstimateFileName,
  @EstimateDocument,
  @EstimateTitle,
  @EstimateFileDate,
  @AvailabilityTypeJSON,
  @AttachmentDataJSON,
  @DeletedAttachmentIds,
  @SpecificationDocumentDelete,
  @EstimateDocumentDelete,
  @Module,
  @WorkItemLibraryId,
  @WorkItemCategory,
  @VesselStr,
  @WorkItemLibraryType,
  @IsEncoded,
  @WorkItemNumberEncoded);
  if("ISNULL"(@WorkItemLibraryId,0) < 1) then
    select "MAX"("WorkItemLibraryId")
      into @WorkItemLibraryId
      from "PNG"."ViewWorkItemsLibrary"
      where "WorkItemNumber" = @WorkItemNumber
      and "WorkitemTitle" = @Title
      and "SWBS" = @SWBS
  end if;
  if(@VesselStr is null) then
    set @VesselId = null
  else
    set @SQL
       = '\x0D\x0A      SELECT  MIN(VesselId)\x0D\x0A        INTO  @VesselId\x0D\x0A        FROM  SWA.UsersVesselIds( LIT.ApplicationId() )\x0D\x0A       WHERE  Vesselid IN (' || "REPLACE"(@VesselStr,'''','') || ')';
    execute immediate with result set off @SQL
  end if;
  set @RowId = "STRING"('VesselId=',@VesselId,',WorkItemLibraryId=',@WorkItemLibraryId);
  select @RowId as "RowId",
    1 as "Success",
    @ErrorMessage as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select null as "RowId",
      0 as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end