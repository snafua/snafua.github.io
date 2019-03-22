create procedure "_SMH"."EquipmentNameValuePairs"( in @VesselId integer,in @EquipmentId integer,in @ItemType char(10) default null ) 
result( "ItemType" char(10),"ItemName" char(25),"ItemValue" char(50) ) 
begin
  call "SMH"."EquipmentNameValuePairs"(@VesselId,@EquipmentId,@ItemType)
end