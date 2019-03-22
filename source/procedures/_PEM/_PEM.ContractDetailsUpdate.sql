create procedure -- JHM
"_PEM"."ContractDetailsUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @ContractNumber char(25),
  in @ProcurementType char(128),
  in @EntityId integer default null,
  in @PersonId integer default null,
  in @ContractorAddress char(128) default null,
  in @ContractorCity char(128) default null,
  in @ContractorState char(128) default null,
  in @ContractorZipCode char(15) default null,
  in @ContractingOfficerId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-06-21 JHM - E-03290: Modified to add ContractingOfficerId
*/
  call "PEM"."ContractDetailsUpdate"(@VesselId,@ContractId,@ContractNumber,@ProcurementType,@EntityId,
  @PersonId,@ContractorAddress,@ContractorCity,@ContractorState,@ContractorZipCode,@ContractingOfficerId)
end