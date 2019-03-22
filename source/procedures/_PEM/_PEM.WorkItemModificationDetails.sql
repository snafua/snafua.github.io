create procedure --AIM
"_PEM"."WorkItemModificationDetails"( 
  in @VesselId integer default null,
  in @WorkItemId integer,
  in @WorkItemModificationId integer,
  in @RowId char(1024) default null ) 
result( 
  "WorkItemModificationNumber" integer,
  "WorkItemModificationTitle" char(128),
  "WorkItemModificationStatus" char(25),
  "WorkItemCategory" char(5),
  "WorkItemNumber" char(25),
  "WorkItemTitle" char(128),
  "WorkItemFundingDescription" char(128),
  "WorkItemExpenditureTypeCode" char(10),
  "WorkItemModificationProgress" integer,
  "NegotiatedTotalDollars" numeric(15,2),
  "EarnedDollars" numeric(15,2),
  "PAWIDollars" numeric(15,2),
  "LinkCount" integer,
  "AttachmentCount" integer,
  "WorkItemModClassificationCode" char(5),
  "WorkItemModClassification" char(25),
  "PortEngineerId" integer,
  "PersonFullName" char(128),
  "WorkItemModIssuedDate" date,
  "WorkItemModResponseDate" date,
  "WorkItemModSettledDate" date,
  "WorkItemModSpecification" long varchar,
  "WorkItemModPreNegotiation" long varchar,
  "WorkItemModPostNegotiation" long varchar,
  "FlagModification" integer,
  "FlagDates" integer,
  "FlagWorkItem" integer,
  "FlagSpecification" integer,
  "FlagDetermination" integer,
  "FlagAttachments" integer,
  "FlagLinks" integer,
  "WorkItemCancellationReason" char(25),
  "WorkItemCancellationReasonDescription" char(64),
  "WorkItemCancellationComment" long varchar ) 
begin
  /*
2018-11-06 B-19084 JBH Procedure updated to pass in RowId and parse VesselId from it rather than VesselId directly
2018-12-19 AIM E-04599 B-19898 Added WorkItemCancellationReason, WorkItemCancellationReasonDescription and WorkItemCancellationComment
*/
  if(@VesselId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  call "PEM"."WorkItemModificationDetails"(@VesselId,@WorkItemId,@WorkItemModificationId)
end