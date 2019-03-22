create procedure --2013-07-08 RJM
"_PNG"."WorkItemLibrarySpecification"( 
  in @SpecificationId integer ) 
result( "DocumentData" long varchar ) 
begin
  select "PNG"."WorkItemLibrarySpecification"(@SpecificationId);
  return "RESULT"
end