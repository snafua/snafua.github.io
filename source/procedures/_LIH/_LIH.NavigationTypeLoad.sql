create procedure "_LIH"."NavigationTypeLoad"()
result( 
  "NodeType" char(10) ) 
begin
  select "LIH"."SavedNodeTypeSelect"() as "NodeType"
end