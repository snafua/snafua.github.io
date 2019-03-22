create procedure "_VTL"."VTLGetEquipments"( in @NodeId char(1024),in @VesselId integer ) 
result( "EquipmentId" integer,"EquipmentDescription" char(80),"HSC" char(25) ) 
begin
  declare @SystemId integer;
  declare @SQL long varchar;
  declare @SQLWhere long varchar;
  declare @DescriptionId integer;
  declare @HSC char(25);
  set @SQLWhere = 'VesselId = ' || @VesselId;
  call "VTL"."NodeIdDecodeEquipments"(@NodeId,@SystemId,@DescriptionId,@HSC);
  if @SystemId is not null then
    set @SQLWhere = @SQLWhere || ' AND SystemId = ' || @SystemId
  end if;
  if @DescriptionId is not null then
    set @SQLWhere = @SQLWhere || ' AND EquipmentClassificationId = ' || @DescriptionId
  end if;
  if @HSC is not null then
    set @SQLWhere = @SQLWhere || ' AND EquipmentHSC = ''' || @HSC || ''''
  end if;
  set @SQL
     = 'select EquipmentId,\x0A      EquipmentDescription,\x0A      EquipmentHSC as HSC from\x0A      VTL.ViewVesselsEquipment where '
     || @SQLWhere;
  execute immediate with result set on
    @SQL
end