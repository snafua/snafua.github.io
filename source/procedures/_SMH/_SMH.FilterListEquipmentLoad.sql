create procedure "_SMH"."FilterListEquipmentLoad"( 
  in @LoadBy char(10) default 'SYSTEM',
  in @Parent char(15) default null,
  in @Selected long varchar default null,
  in @Levels integer default 1 ) 
result( 
  "EquipmentId" integer,
  "EquipmentName" char(128),
  "EquipmentSystem" char(128),
  "EquipmentSystemId" integer,
  "EquipmentHSC" char(12),
  "EquipmentClass" char(128),
  "EquipmentClassId" integer,
  "HasChildren" integer,
  "Filtered" integer ) 
begin
  if @LoadBy <> 'HSC' then
    call "SMH"."FilterListEquipmentLoad"(@LoadBy,@Parent,@Selected,@Levels)
  end if
end