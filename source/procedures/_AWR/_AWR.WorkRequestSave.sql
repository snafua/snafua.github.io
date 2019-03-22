create procedure "_AWR"."WorkRequestSave"( 
  in @ApplicationId integer,
  in @RowId char(1024),
  in @VesselId integer,
  in @WorkRequestTitle char(50),
  in @SourceId integer default null,
  in @SubTypeId integer default null,
  in @InitiationId smallint default null,
  in @CompartmentId integer default null,
  in @LocationDeck char(10) default null,
  in @LocationFrame char(10) default null,
  in @LocationSide char(10) default null,
  in @WorkRequestNotes long varchar default null,
  in @Narrative long varchar default null,
  in @WorkRequestReferenceId integer default null,
  in @WorkRequestReference long varchar default null ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar,
  "WorkRequestExternalId" char(10) ) 
begin
  declare @UserId integer;
  declare @WorkRequestId integer;
  set @UserId = "SWA"."UserId"();
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @WorkRequestNotes = "ECO"."CheckNull"(@WorkRequestNotes);
  set @Narrative = "ECO"."CheckNull"(@Narrative);
  call "AWR"."WorkRequestSave"(@VesselId,@WorkRequestTitle,@UserId,@SourceId,@SubTypeId,@InitiationId,@WorkRequestNotes,
  @WorkRequestId,@CompartmentId,@LocationDeck,@LocationFrame,@LocationSide,@Narrative,
  @WorkRequestReferenceId,@WorkRequestReference)
end