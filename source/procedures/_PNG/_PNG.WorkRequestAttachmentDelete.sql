create procedure "_PNG"."WorkRequestAttachmentDelete"( 
  in @VesselId integer,
  in @WorkRequestId integer,
  in @AttachmentId integer,
  in @Inactivate integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @Success bit;
  declare @ErrorMessage long varchar;
  set @Success = 1;
  set @ErrorMessage = null;
  if @Inactivate is null then set @Inactivate = 0 end if;
  call "SWA"."WorkRequestAttachmentDelete"(@VesselId,@WorkRequestId,@AttachmentId,@Inactivate);
  select @Success,@ErrorMessage from "DUMMY"
exception
  when others then
    set @Success = 0;
    set @ErrorMessage = 'Error: ' || sqlcode || '; ' || "ERRORMSG"();
    select @Success,@ErrorMessage from "DUMMY"
end