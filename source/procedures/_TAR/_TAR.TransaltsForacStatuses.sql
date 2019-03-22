create procedure --B-20876 E-04937
--RJM
"_TAR"."TransaltsForacStatuses"()
result( 
  "ReviewStatus" char(25) ) 
begin
  /*
2019-02-05 RJM B-20876 E-04937 created
*/
  call "TAR"."TransaltsForacStatuses"()
end