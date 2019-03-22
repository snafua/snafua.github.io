create procedure "_SWA"."ApplicationFeedbackSave"( 
  in @ApplicationId integer,
  in @Email char(254),
  in @FeedbackDate timestamp,
  in @Subject char(50),
  in @ScopeId integer,
  in @VesselId integer,
  in @TypeId integer,
  in @EquipmentNodeId char(1024) default null,
  in @MCode char(4) default null,
  in @FeedbackMessage long varchar,
  in @Source long varchar ) 
result( 
  "FeedbackRowId" char(256),
  "FeedbackId" integer,
  "TaskCode" char(25),
  "MaintenanceProcedureTitle" char(128),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SWA"."ApplicationFeedbackSave"(@ApplicationId,@Email,@FeedbackDate,@Subject,@ScopeId,
  @VesselId,@TypeId,@EquipmentNodeId,@MCode,@FeedbackMessage,@Source)
end