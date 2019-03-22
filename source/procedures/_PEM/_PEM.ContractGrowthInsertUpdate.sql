create procedure --JBH
"_PEM"."ContractGrowthInsertUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @AwardLaborRate numeric(15,2),
  in @AGRLaborRate numeric(15,2),
  in @AwardedAGRHours numeric(15,2),
  in @AGRMaterial numeric(15,2),
  in @AdminPercentage numeric(15,2) default null,
  in @ProfitPercentage numeric(15,2) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-10-23 B-19883 JBH:  Added Admin Percentage and Profit Percentage
*/
  call "PEM"."ContractGrowthInsertUpdate"(@VesselId,@ContractId,@AwardLaborRate,@AGRLaborRate,@AwardedAGRHours,@AGRMaterial,@AdminPercentage,@ProfitPercentage)
end