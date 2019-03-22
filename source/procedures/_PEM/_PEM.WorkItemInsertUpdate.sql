create procedure "_PEM"."WorkItemInsertUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer default null,
  in @WorkItemNumber char(25),
  in @WorkItemTitle char(128),
  in @SWBS char(4),
  in @WorkItemCategory char(5),
  in @TransaltNumber char(128) default null,
  in @ExpenditureTypeCode char(10) default null,
  in @FundingId integer default null,
  in @ProgressByTime bit default 0,
  in @ILSSystem bit default 0,
  in @PierSide bit default 0 ) 
result( 
  "WorkItemId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemInsertUpdate"(@VesselId,@ContractId,@WorkItemId,@WorkItemNumber,@WorkItemTitle,@SWBS,@WorkItemCategory,@TransaltNumber,@ExpenditureTypeCode,@FundingId,@ProgressByTime,@ILSSystem,@PierSide)
end