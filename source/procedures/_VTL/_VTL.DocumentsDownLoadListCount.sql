create function "_VTL"."DocumentsDownLoadListCount"()
returns integer
begin
  declare @Count integer;
  set @Count = "VTL"."DocumentsDownLoadListCount"();
  return(@Count)
end