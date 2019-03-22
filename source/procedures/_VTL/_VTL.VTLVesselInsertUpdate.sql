create procedure "_VTL"."VTLVesselInsertUpdate"( in @VTLVesselId smallint default null,in @VTLVesselName char(100),in @VTLVesselHullNumber char(20),in @VTLVesselUIC char(6),in @VTLVesselClassId smallint,
  in @ProgramManagerCode char(4) default 'PM5',in @PreviousName char(100) default null,in @PreviousHullNumber char(20) default null,in @SAMMVessel smallint default null ) 
result( 
  "VTLVesselId" smallint,
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."VTLVesselInsertUpdate"(@VTLVesselId,@VTLVesselName,@VTLVesselHullNumber,@VTLVesselUIC,@VTLVesselClassId,@ProgramManagerCode,@PreviousName,@PreviousHullNumber,@SAMMVessel)
end