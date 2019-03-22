create procedure "_SWA"."Departments"()
result( 
  "DepartmentTitle" char(50),
  "DepartmentId" integer ) 
begin
  call "SWA"."Departments"()
end