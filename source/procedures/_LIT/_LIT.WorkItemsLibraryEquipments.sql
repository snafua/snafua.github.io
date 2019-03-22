create procedure --RJM
"_LIT"."WorkItemsLibraryEquipments"( 
  in @ApplicationId integer,
  in @RowId char(1024),
  in @VesselId integer default null,
  in @OrderBy char(1024) default null ) 
result( 
  "MCODE" char(60),
  "EquipmentDescription" char(80),
  "AllowancePartsList" char(20),
  "HSC" char(12),
  "CLIPHSC" char(12),
  "PartsQuantity" integer,
  "CanEdit" bit,
  "CanRemove" bit,
  "RowId" char(1024),
  "OrderBy" char(1024),
  "EquipmentRowId" char(1024) ) 
begin
  /*
2016-07-19 RJM
2018-08-20 RJM E-04174 Added result EquipmentRowId
*/
  declare @WorkItemLibraryId integer;
  if(@VesselId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  if(@ApplicationId is null) then
    set @ApplicationId = "LIT"."ApplicationId"()
  end if;
  if(@OrderBy is null) then
    set @OrderBy = ' MCODE ASC, EquipmentDescription ASC '
  end if;
  call "LIT"."WorkItemsLibraryEquipments"(@ApplicationId,@VesselId,@WorkItemLibraryId,@OrderBy)
end