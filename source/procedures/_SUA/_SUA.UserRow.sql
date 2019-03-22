create procedure "_SUA"."UserRow"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "UserFullName" char(512),
  "UserLoginId" char(128),
  "BilletDescription" char(50),
  "LastLoginTimestamp" timestamp,
  "LoginType" char(10),
  "PKIStatus" char(10),
  "EnablePKIPermissions" integer,
  "EnableStandardPermissions" integer ) 
begin
  call "SUA"."UserRow"(@RowId)
end