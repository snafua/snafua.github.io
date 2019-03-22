create procedure "_PNG"."WorkRequestsInsertUpdate"( 
  in @VesselId integer,
  in @WorkRequestSubject char(50),
  in @Notes long varchar default null,
  in @DepartmentId integer,
  in @WorkRequestDate date default null,
  in @LocationDeck char(25),
  in @LocationFrame char(25),
  in @LocationSide char(25),
  in @Compartment char(128),
  in @AttachmentDataJSON long varchar default null,
  in @WorkRequestExternalId char(10) default null,
  in @WorkRequestId integer default null,
  in @WorkRequestIsArchived bit default 0,
  in @WorkRequestIsDeleted bit default 0,
  in @UnsaveHistory bit default 0,
  in @WorkRequestIsTemplate bit default 0,
  in @WorkRequestReviewStatus char(10) default 'In Review',
  in @SystemEquipmentFailure bit default null,
  in @OperationalPercent smallint default null ) 
result( 
  "WorkRequestId" integer ) 
begin
  select "PNG"."WorkRequestsInsertUpdate"(@VesselId,@WorkRequestSubject,@Notes,@DepartmentId,@WorkRequestDate,@LocationDeck,@LocationFrame,@LocationSide,@Compartment,@AttachmentDataJSON,@WorkRequestExternalId,@WorkRequestId,@WorkRequestIsArchived,
    @WorkRequestIsDeleted,@UnsaveHistory,@WorkRequestIsTemplate,@WorkRequestReviewStatus,@SystemEquipmentFailure,@OperationalPercent) as "WorkRequestId"
end