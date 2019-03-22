create procedure --Procedure _PAV.WorkItemCategoryList
--RJM 2013-06-12 Populates Work Item Category dropdown on Add/Edit Dialog
"_PAV"."WorkItemCategoryList"()
result( 
  "WorkItemCategory" char(5) ) 
begin
  call "PAV"."WorkItemCategoryList"()
end