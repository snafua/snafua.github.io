create function --RJM
"_CMS"."ApplicationId"()
returns integer
begin
  /*
2018-06-19 RJM E-04294
*/
  return("CMS"."ApplicationId"())
end