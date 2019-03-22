create procedure "_PEM"."WorkItemsCategories"( 
  in @VesselId integer ) 
result( 
  "WorkItemCategory" char(5) ) 
begin
  call "PAV"."WorkItemCategoryList"()
end