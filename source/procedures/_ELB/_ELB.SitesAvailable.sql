create procedure /*
JHM: B-16667
JLD: E-03800 B-17525 change SiteId to RowId
*/
"_ELB"."SitesAvailable"( 
  in @NodeId char(2048) default null,
  in @RowId char(2048) default null,
  in @ModuleIdentifier char(128) default null ) 
result( 
  "RowId" char(128),
  "SiteName" char(128),
  "ItemSelected" bit ) 
begin
  declare @UserId integer;
  declare @ApplicationId integer;
  declare @SiteId integer;
  declare @Permission char(19);
  set @UserId = "ESO"."UsersId"();
  set @ApplicationId = "ELB"."ApplicationId"();
  call "ELB"."NodeIdDecode"(@NodeId,@SiteId);
  if(@SiteId is null) then
    call "ELB"."NodeIdDecode"(@RowId,@SiteId)
  end if;
  -- TODO: Translate @ModuleIdentifier into appropriate permission preface
  --        (i.e. @ModuleIdentifier = UTCOffsetsDialog, Permissiion = UTCOffsets[View/Add/Edit/Delete])
  select "ELB"."NodeIdEncode"("SiteId") as "RowId",
    "SiteName" as "SiteName",
    "ItemSelected" as "ItemSelected"
    from "ECO"."ApplicationUserSites"(@ApplicationId,@UserId,@Permission,@SiteId)
    order by "SiteName" asc
end