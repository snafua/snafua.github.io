create procedure --RJM
"_PAV"."ContractsFundingSources"( 
  in @VesselId integer,
  in @ContractId integer default null,
  in @IsEncoded bit default 0 ) 
result( 
  "FundingId" integer,
  "ProjectCode" char(25),
  "TaskCode" char(25),
  "FundingDescription" char(256),
  "DefaultFunding" bit ) 
begin
  if @IsEncoded is null then
    set @IsEncoded = 0
  end if;
  call "PAV"."ContractsFundingSources"(@VesselId,@ContractId,@IsEncoded)
end