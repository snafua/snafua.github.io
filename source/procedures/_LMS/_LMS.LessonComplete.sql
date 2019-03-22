create procedure "_LMS"."LessonComplete"( 
  in @LessonId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @Success bit;
  declare @ErrorMessage long varchar;
  set @Success = 1;
  set @ErrorMessage = null;
  call "LMS"."LessonComplete"(@LessonId);
  commit work;
  select @Success,@ErrorMessage from "DUMMY"
exception
  when others then
    set @Success = 0;
    set @ErrorMessage = 'Error: ' || sqlcode || '; ' || "ERRORMSG"();
    select @Success,@ErrorMessage from "DUMMY"
end