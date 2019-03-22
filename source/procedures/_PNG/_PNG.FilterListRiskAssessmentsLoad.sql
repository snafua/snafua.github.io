create procedure "_PNG"."FilterListRiskAssessmentsLoad"( 
  in @GetDefault bit default 0 ) 
result( 
  "RiskAssesment" char(1),
  "Filtered" integer ) 
begin
  if @GetDefault is null then
    set @GetDefault = 0
  end if;
  call "PNG"."FilterListRiskAssessmentsLoad"(@GetDefault)
end