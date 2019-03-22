create procedure "_PNG"."Departments"( 
  in @RowId char(256) default null ) 
result( 
  "DepartmentTitle" char(50),
  "DepartmentId" integer,
  "IsSelected" bit ) 
begin
  call "PNG"."Departments"(@RowId)
end