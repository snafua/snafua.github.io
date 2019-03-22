create procedure /*
* _PAV.RemoveWorkPackage - thawley
*/
"_PAV"."RemoveWorkPackage"( 
  in @RowId char(256) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."RemoveWorkPackage"(@RowId)
end