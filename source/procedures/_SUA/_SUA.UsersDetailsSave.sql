create procedure --AIM
"_SUA"."UsersDetailsSave"( 
  in @RowId char(1024),
  in @UserFullName char(128),
  in @UserFirstName char(128) default null,
  in @UserMiddleName char(128) default null,
  in @UserLastName char(128) default null,
  in @UserIsActive bit default 1,
  in @BilletId smallint default null,
  in @UserRevisedBy char(128) default current user,
  in @Emails varchar(500) default null,
  in @PhoneNumber char(20) default null ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2019-01-22 AIM E-04570 B-20677
*/
  declare @UserId integer;
  set @UserId = "SWA"."KeyValuePairParse"(@RowId,'UserId');
  call "SUA"."UsersDetailsSave"(@UserId,@UserFullName,@UserFirstName,@UserMiddleName,@UserLastName,@UserIsActive,@BilletId,@UserRevisedBy,@Emails,@PhoneNumber)
end