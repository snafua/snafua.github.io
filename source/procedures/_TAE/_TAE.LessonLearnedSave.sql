create procedure "_TAE"."LessonLearnedSave"( 
  in @RowId char(512),
  in @LessonLearned long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  declare @Success bit;
  declare @ErrorMessage long varchar;
  declare @VesselId smallint;
  declare @TransaltId integer;
  declare @SWBS char(4);
  declare @SpecificationId integer;
  declare @WorkItemLibraryId integer;
  declare @WorkItemId integer;
  declare @AttachmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @TransaltId = "SWA"."KeyValuePairParse"(@RowId,'TransaltId');
  set @SWBS = "SWA"."KeyValuePairParse"(@RowId,'SWBS');
  set @SpecificationId = "SWA"."KeyValuePairParse"(@RowId,'SpecificationId');
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@RowId,'AttachmentId');
  call "TAE"."LessonLearnedSave"(@TransaltId,@VesselId,@LessonLearned,"SWA"."UserId"());
  select @RowId as "RowId",
    1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end