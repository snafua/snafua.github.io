create procedure /*
* _PAV.RemoveAvailability - thawley
*/
"_PAV"."RemoveAvailability"( 
  in @RowId char(256) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."RemoveAvailability"(@RowId)
end