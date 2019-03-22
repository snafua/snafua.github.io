create procedure "_PAV"."ContractorsInsert"( 
  in @Contractor char(128),
  in @LocationId integer default null ) 
result( 
  "ContractorId" integer,
  "Success" bit,
  "ErrorMessage" char(2048) ) 
begin
  declare @ContractorId integer;
  declare @Success bit;
  declare @ErrorMessage char(2048);
  set @ContractorId = "PAV"."ContractorsInsert"(@Contractor,@LocationId);
  select @ContractorId as "ContractorId",
    1 as "Success",
    @ErrorMessage as "ErrorMessage"
exception
  when others then
    set @ErrorMessage = "STRING"('Error: ',sqlcode,'; ',"ERRORMSG"());
    set @Success = 0;
    select @ContractorId,
      @Success,
      @ErrorMessage
      from "Dummy"
end