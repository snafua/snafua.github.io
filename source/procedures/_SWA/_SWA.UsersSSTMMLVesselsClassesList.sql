create procedure "_SWA"."UsersSSTMMLVesselsClassesList"()
result( 
  "VesselClassId" integer,
  "VesselClassDescription" char(80) ) 
begin
  call "SWA"."UsersSSTMMLVesselsClassesList"()
end