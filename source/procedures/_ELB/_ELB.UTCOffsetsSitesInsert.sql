create procedure -- JHM: B-16667
"_ELB"."UTCOffsetsSitesInsert"( 
  in @RowId char(2048),
  in @UTCOffsetMinutes integer,
  in @EffectiveUTCTimestamp timestamp ) 
result( 
  "RowId" char(2048),
  "Success" bit,
  "ErrorMessage" char(2048) ) 
begin
  declare @SiteId integer;
  declare @UserId integer;
  declare @Success bit;
  declare @ErrorMessage char(2048);
  declare @UTCOffsetId integer;
  call "ELB"."NodeIdDecode"(@RowId,@SiteId);
  set @UserId = "ESO"."UsersId"();
  set @Success = 1;
  set @ErrorMessage = 'No Error';
  set @UTCOffsetId = "ELB"."UTCOffsetsSitesInsert"(@SiteId,@UserId,@UTCOffsetMinutes,@EffectiveUTCTimestamp);
  if(@UTCOffsetId is null) then
    set @Success = 0;
    set @ErrorMessage = 'Unable to insert new UTC Offset'
  end if;
  select
    "ELB"."NodeIdEncode"(
    @SiteId,
    @UTCOffsetId,
    @UserId) as "RowId",
    @Success as "Success",
    @ErrorMessage as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    set @Success = 0;
    select null as "RowId",
      @Success as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end