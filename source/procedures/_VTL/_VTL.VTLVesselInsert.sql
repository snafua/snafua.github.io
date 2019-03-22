create procedure "_VTL"."VTLVesselInsert"( in @VTLVesselName char(100),in @VTLVesselHullNumber char(20),in @VTLVesselUIC char(6),in @VTLVesselClassId smallint ) 
result( 
  "VTLVesselId" smallint,
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."VTLVesselInsert"(@VTLVesselName,@VTLVesselHullNumber,@VTLVesselUIC,@VTLVesselClassId)
end