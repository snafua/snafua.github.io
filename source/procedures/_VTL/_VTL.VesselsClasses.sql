create procedure "_VTL"."VesselsClasses"()
result( 
  "VTLVesselClassId" smallint,"VTLVesselClassCode" char(100),"VTLVesselClassDescription" char(100) ) 
begin
  call "VTL"."VesselsClasses"()
end