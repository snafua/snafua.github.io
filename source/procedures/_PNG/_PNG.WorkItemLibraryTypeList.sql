create procedure -- Procedure _PNG.WorkItemLibraryTypeList.sql
-- RJM 2013-06-12 To populate Item Type dropdown on Library dialog
"_PNG"."WorkItemLibraryTypeList"()
result( 
  "WorkItemLibraryType" char(25) ) 
begin
  call "PNG"."WorkItemLibraryTypeList"()
end