create procedure "_LIT"."NavigationTypeLoad"()
result( 
  "NodeType" char(10) ) 
begin
  select "LIT"."SavedNodeTypeSelect"() as "NodeType"
end