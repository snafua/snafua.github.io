create function "_SWA"."ApplicationsExportsGridId"( 
  in @ServiceName char(256) ) 
returns integer
begin
  declare @Result integer;
  select "SWA"."ApplicationsExportsGridId"(@ServiceName) into @Result;
  return @Result
end