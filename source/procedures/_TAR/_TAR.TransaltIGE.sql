create function "_TAR"."TransaltIGE"( 
  in @RowId char(1024) ) 
returns long binary
begin
  declare @IGE long binary;
  set @IGE = "TAR"."TransaltIGE"(@RowId);
  return(@IGE)
end