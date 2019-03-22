create procedure "_SPM"."NavigationTypeLoad"()
result( 
  "NodeType" char(10) ) 
begin
  select "SPM"."SavedNodeTypeSelect"() as "NodeType"
end