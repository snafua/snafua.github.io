create procedure --JBH
"_PEM"."ContractDetails"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "ContractNumber" char(25),
  "AvailabilityType" char(15),
  "VesselName" char(80),
  "VesselClass" char(30),
  "HullNumber" char(20),
  "ProgramManagerCode" char(128),
  "ProcurementType" char(128),
  "ContractorAddress" char(128),
  "ContractorCity" char(128),
  "ContractorState" char(128),
  "ContractorZipCode" char(128),
  "EntityId" integer,
  "PersonId" integer,
  "ContractingOfficerId" integer,
  "FlagContractNumber" integer,
  "FlagProcurementType" integer,
  "FlagEntity" integer,
  "FlagPortEngineer" integer,
  "FlagContractingOfficer" integer,
  "FlagAccounts" integer,
  "CanSave" integer,
  "AdminPercentage" numeric(15,2),
  "ProfitPercentage" numeric(15,2) ) 
begin
  /*
2018-06-21 JHM - E-03290: Modified to add ContractingOfficerId, FlagContractingOfficer
2018-10-23 B-19883 JBH:  Added AdminPercentage and ProfitPercentage
*/
  call "PEM"."ContractDetails"(@VesselId,@ContractId)
end