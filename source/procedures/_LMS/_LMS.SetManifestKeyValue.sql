create procedure "_LMS"."SetManifestKeyValue"( 
  in @ManifestLessonId char(256),
  in @StatusKey long varchar,
  in @StatusKeyValue long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar,
  "LessonStatus" integer ) 
begin
  declare @Status integer;
  declare @Success bit;
  declare @ErrorMessage long varchar;
  declare @LessonId integer;
  set @Success = 1;
  set @Status = null;
  set @ErrorMessage = null;
  set @StatusKeyValue = "TRIM"(@StatusKeyValue);
  if(@StatusKeyValue = '') then
    set @StatusKeyValue = null
  end if;
  set @LessonId = "LMS"."GetLessonIdFromManifest"(@ManifestLessonId);
  call "LMS"."SetKeyValue"(@LessonId,@StatusKey,@StatusKeyValue);
  commit work;
  set @Status = "LMS"."UsersLessonStatus"(@LessonId);
  select @Success as "Success",
    @ErrorMessage as "ErrorMessage",
    @Status as "LessonStatus"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "STRING"('Error: ',sqlcode,'; ',"ERRORMSG"());
    set @Success = 0;
    select @Success as "Success",
      @ErrorMessage as "ErrorMessage",
      @Status as "LessonStatus"
      from "DUMMY"
end