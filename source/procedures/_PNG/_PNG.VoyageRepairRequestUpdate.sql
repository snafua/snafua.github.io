create procedure "_PNG"."VoyageRepairRequestUpdate"( 
  in @VesselId integer,
  in @WorkRequestId integer,
  in @ShoreStatus char(10),
  in @Disposition char(20),
  in @FORAC char(20),
  in @ResponseDate char(10),
  in @CompletionDate char(10),
  in @PEComments long varchar,
  in @AvailabilityId char(10),
  in @ContractId char(10),
  in @WorkItemId char(10),
  in @SpecificationDocumentDelete bit,
  in @SpecificationId integer,
  in @SpecificationFileName char(256),
  in @SpecificationDocument long varchar,
  in @EstimateDocumentDelete bit,
  in @EstimateId integer,
  in @EstimateFileName char(128),
  in @EstimateDocument long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @Success bit;
  declare @ErrorMessage long varchar;
  set @Success = 1;
  set @ErrorMessage = '';
  set @ShoreStatus = "ECO"."CHecknull"(@ShoreStatus);
  set @Disposition = "ECO"."CHecknull"(@Disposition);
  set @FORAC = "ECO"."CHecknull"(@FORAC);
  set @ResponseDate = "ECO"."CHecknull"(@ResponseDate);
  set @CompletionDate = "ECO"."CHecknull"(@CompletionDate);
  set @PEComments = "ECO"."CHecknull"(@PEComments);
  if @ShoreStatus = 'null' then set @ShoreStatus = null end if;
  if @Disposition = 'null' then set @Disposition = null end if;
  if @FORAC = 'null' then set @FORAC = null end if;
  if @ResponseDate = 'null' then set @ResponseDate = null end if;
  if @CompletionDate = 'null' then set @CompletionDate = null end if;
  if @PEComments = 'null' then set @PEComments = null end if;
  if @AvailabilityId in( 'null','',' ' ) then set @AvailabilityId = null end if;
  if @ContractId in( 'null','',' ' ) then set @ContractId = null end if;
  if @WorkItemId in( 'null','',' ' ) then set @WorkItemId = null end if;
  set @PEComments = "ECO"."Base64Decode"(@PEComments);
  call "PNG"."VoyageRepairRequestCurrentValues"(@VesselId,@WorkRequestId,@ShoreStatus,@Disposition,@FORAC,@ResponseDate,@CompletionDate,@PEComments,@AvailabilityId,@ContractId,@WorkItemId);
  if @WorkItemId is null and "ISNUMERIC"(@ContractId) = 1 then
    set @WorkItemId = "PNG"."ServiceOrderWorkItemId"(@VesselId,@ContractId)
  end if;
  call "PNG"."VoyageRepairRequestUpdate"(
  @VesselId,
  @WorkRequestId,
  @ShoreStatus,
  @Disposition,
  @FORAC,
  @ResponseDate,
  @CompletionDate,
  @PEComments,
  @AvailabilityId,
  @ContractId,
  @WorkItemId,
  @SpecificationDocumentDelete,
  @SpecificationId,
  @SpecificationFileName,
  @SpecificationDocument,
  @EstimateDocumentDelete,
  @EstimateId,
  @EstimateFileName,
  @EstimateDocument);
  select @Success as "Success",@ErrorMessage as "ErrorMessage" from "DUMMY"
exception
  when others then set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",@ErrorMessage as "ErrorMessage" from "DUMMY"
end