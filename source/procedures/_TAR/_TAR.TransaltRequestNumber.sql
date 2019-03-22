create function "_TAR"."TransaltRequestNumber"( in @RowId char(1024),in @VesselClass char(20) ) 
returns char(20)
begin
  declare @ReturnNumber char(20);
  set @ReturnNumber = "TAR"."TransaltRequestNumber"(@RowId,@VesselClass);
  return(@ReturnNumber)
end