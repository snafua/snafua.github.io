create procedure /*
* _SMH.UsersFilterSettings - thawley
*/
"_SMH"."UsersFilterSettings"( 
  in @VesselAccessList long varchar,
  in @EquipmentAccessList long varchar,
  in @DateList long varchar,
  in @ItemTypeList long varchar,
  in @PriorityStatusList long varchar,
  in @LevelsList long varchar,
  in @Description char(128) default null ) 
begin
  call "SMH"."UsersFilterSettings"(@VesselAccessList,@EquipmentAccessList,@DateList,@ItemTypeList,@PriorityStatusList,@LevelsList,@Description)
end