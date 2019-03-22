create procedure "_PNG"."WorkRequestAttachmentUpdate"( 
  in @VesselId integer,
  in @WorkRequestId integer,
  in @AttachmentId integer,
  in @AttachmentName char(256),
  in @AttachmentDescription char(256),
  in @AttachmentData long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @Success bit;
  declare @ErrorMessage long varchar;
  declare @AttachmentBlob long binary;
  declare @Origin char(5);
  set @Success = 1;
  set @ErrorMessage = null;
  set @AttachmentName = "TRIM"(@AttachmentName);
  set @AttachmentDescription = "TRIM"(@AttachmentDescription);
  set @Origin = 'SHORE';
  if @AttachmentName = '' then set @AttachmentName = null end if;
  if @AttachmentData = '' then set @AttachmentData = null end if;
  if @AttachmentDescription = '' then set @AttachmentDescription = null end if;
  if @AttachmentData is not null then
    set @AttachmentBlob = "BASE64_DECODE"(@AttachmentData);
    if @AttachmentDescription is null then set @AttachmentDescription = 'File ' || @AttachmentName || ' added on ' || current utc timestamp || ' (UTC)' end if;
    call "SWA"."WorkRequestAttachmentUpdate"(@VesselId,@WorkRequestId,@AttachmentId,@AttachmentName,@AttachmentDescription,@AttachmentBlob,@Origin)
  else
    set @Success = 0;
    set @ErrorMessage = 'The attachment was empty.'
  end if;
  select @Success,@ErrorMessage from "DUMMY"
exception
  when others then
    set @Success = 0;
    set @ErrorMessage = 'Error: ' || sqlcode || '; ' || "ERRORMSG"();
    select @Success,@ErrorMessage from "DUMMY"
end