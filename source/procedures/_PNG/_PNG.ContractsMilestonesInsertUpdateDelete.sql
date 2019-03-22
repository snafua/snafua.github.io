create function "_PNG"."ContractsMilestonesInsertUpdateDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @Milestone char(128),
  in @MilestoneScheduleDate date,
  in @MilestoneComments char(256) default null,
  in @MilestoneRevisedDate date default null,
  in @MilestoneActualDate date default null,
  in @MilestoneCompleteDate date default null,
  in @MilestoneId integer default null,
  in @MilestoneDelete bit default 0 ) 
returns integer
begin
  set @MilestoneId = "PNG"."ContractsMilestonesInsertUpdateDelete"(@VesselId,@ContractId,@Milestone,@MilestoneScheduleDate,@MilestoneComments,@MilestoneRevisedDate,@MilestoneActualDate,@MilestoneCompleteDate,@MilestoneId,@MilestoneDelete);
  return @MilestoneId
end