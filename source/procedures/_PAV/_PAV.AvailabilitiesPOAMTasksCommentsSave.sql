create procedure "_PAV"."AvailabilitiesPOAMTasksCommentsSave"( 
  in @RowId long varchar,
  in @Comments long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  declare @POAMId integer;
  declare @MilestoneId integer;
  declare @Success bit;
  declare @ErrorMessage long varchar;
  set @Success = 1;
  set @ErrorMessage = 'No Error';
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId');
  set @POAMId = "SWA"."KeyValuePairParse"(@RowId,'POAMId');
  set @MilestoneId = "SWA"."KeyValuePairParse"(@RowId,'MilestoneId');
  set @Comments = "BASE64_DECODE"(@Comments);
  call "PAV"."AvailabilitiesPOAMTasksCommentsSave"(@VesselId,@AvailabilityId,@POAMId,@MilestoneId,@Comments);
  select @Success as "Success",
    @ErrorMessage as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    set @Success = 0;
    select @Success as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end