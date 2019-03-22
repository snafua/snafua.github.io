create procedure -- JHM
"_ELB"."UTCOffsetsDetails"( 
  in @RowId char(2048) ) 
result( 
  "CurrentUTCTimestamp" timestamp,
  "CurrentUTCOffsetMinutes" integer,
  "UTCOffsetMinimum" integer,
  "UTCOffsetMaximum" integer,
  "EffectiveUTCMinimum" timestamp,
  "EffectiveUTCMaximum" timestamp,
  "UTCOffsetPermissions" integer ) 
begin
  declare @UserId integer;
  declare @SiteId integer;
  set @UserId = "ESO"."UsersId"();
  call "ELB"."NodeIdDecode"(@RowId,@SiteId);
  call "ELB"."UTCOffsetsDetails"(@SiteId,@UserId)
end