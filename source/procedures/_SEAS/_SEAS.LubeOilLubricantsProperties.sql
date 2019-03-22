create procedure "_SEAS"."LubeOilLubricantsProperties"( 
  in @LubricantId integer default null,in @Sort long varchar default '2 ASC' ) 
result( "PropertyId" integer,"PropertyDescription" char(20),"PropertyBaseline" char(15) ) 
begin
  call "SEAS"."LubeOilLubricantsProperties"(@LubricantId,@Sort)
end