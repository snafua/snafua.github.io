create procedure "_PNG"."NavigationTypeLoad"()
result( 
  "NodeType" char(10) ) 
begin
  select "PNG"."SavedNodeTypeSelect"() as "NodeType"
end