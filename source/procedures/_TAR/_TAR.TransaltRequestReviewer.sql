create procedure "_TAR"."TransaltRequestReviewer"( 
  in @SearchText long varchar default null,
  in @OrderBy long varchar default null ) 
result( 
  "RowId" char(1024),
  "UserFirstName" char(128),
  "UserMiddleName" char(128),
  "UserLastName" char(128),
  "UserFullName" char(256),
  "UserIdPhrase" char(40),
  "UserLoginId" char(127),
  "Emails" char(500),
  "PhoneNumber" char(20),
  "UserRole" char(20),
  "OfficeCodeId" integer,
  "OfficeCodeDisplay" char(128),
  "UserId" integer ) 
begin
  /*
2017-03-29 RJM Formatted, added UserId to results
2017-04-05 RJM Changed @PartOfNameorEmail to @SearchText
2017-10-06 AJLF Corrected wrong case for UserFIRSTName to UserFirstName
*/
  call "TAR"."TransaltRequestReviewer"(@SearchText,@OrderBy)
end