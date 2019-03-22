create procedure --E-04741 B-19885
--RJM
"_SWA"."ResetUserSettings"( 
  in @UserId integer,
  in @ApplicationId integer,
  in @ResetFilter bit default 0,
  in @ResetNode bit default 0,
  in @ResetOrderBy bit default 0 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-10-15 RJM  E-04741 B-19885
*/
  call "SWA"."ResetUserSettings"(@UserId,@ApplicationId,@ResetFilter,@ResetNode,@ResetOrderBy)
end