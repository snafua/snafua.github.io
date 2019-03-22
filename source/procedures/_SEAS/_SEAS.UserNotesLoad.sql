create function "_SEAS"."UserNotesLoad"()
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "SEAS"."UserNotesLoad"();
  return(@Result)
end