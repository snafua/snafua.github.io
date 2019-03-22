create procedure "_VTL"."VTLVesselsClassesInsert"( in @VTLVesselClassCode char(20),in @VTLVesselClassDescription char(100) ) 
result( 
  "VTLVesselClassId" smallint,
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."VTLVesselsClassesInsert"(@VTLVesselClassCode,@VTLVesselClassDescription)
end