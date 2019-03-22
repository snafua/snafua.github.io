create procedure --JLD
"_SMH"."MachineryHistoryAttachmentDivest"( 
  in @AttachmentRowId char(1024),
  in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-03-29 RJM
2018-06-15 JLD E-03966 B-18267
*/
  declare @ErrorMessage long varchar;
  declare @VesselId integer;
  declare @AttachmentId integer;
  declare @EquipmentId integer;
  declare @MachineryHistoryId integer;
  declare @RelatedItemAttachment bit;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  set @RelatedItemAttachment = "SWA"."KeyValuePairParse"(@AttachmentRowId,'RelatedItemAttachment');
  if(@RelatedItemAttachment = 0) then
    call "SAMM"."MachineryHistoryAttachmentsDelete"(@VesselId,@AttachmentId,@MachineryHistoryId)
  end if;
  select 1 as "Success",
    @ErrorMessage as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end