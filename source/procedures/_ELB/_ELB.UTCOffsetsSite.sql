create procedure -- JHM: B-16667
"_ELB"."UTCOffsetsSite"( 
  in @RowId char(2048) ) 
result( 
  "RowId" char(2048),
  "UTCOffsetMinutes" integer,
  "UTCOffsetDisplay" char(6),
  "UTCOffsetStart" timestamp,
  "UTCOffsetEnd" timestamp,
  "UTCOffsetPermissions" integer,
  "UserFullName" char(256) ) 
begin
  declare @SiteId integer;
  declare @UserId integer;
  call "ELB"."NodeIdDecode"(@RowId,@SiteId);
  set @UserId = "ESO"."UsersId"();
  select
    "ELB"."NodeIdEncode"(
    @SiteId,
    "UserId",
    "UTCOffsetId") as "RowId",
    "UTCOffsetMinutes" as "UTCOffsetMinutes",
    "UTCOffsetDisplay" as "UTCOffsetDisplay",
    "UTCOffsetStart" as "UTCOffsetStart",
    "UTCOffsetEnd" as "UTCOffsetEnd",
    "UTCOffsetPermissions" as "UTCOffsetPermissions",
    "UserFullName" as "UserFullName"
    from "ELB"."UTCOffsetsSite"(@SiteId,@UserId)
    order by "UTCOffsetStart" desc
end