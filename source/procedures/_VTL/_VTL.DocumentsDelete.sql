create procedure "_VTL"."DocumentsDelete"( in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  declare @ErrorMessage long varchar;
  declare @DocumentId integer;
  declare @Success bit;
  set @Success = 1;
  call "VTL"."RowIdDecode"(
  @RowId,
  @DocumentId);
  if(@DocumentId is not null) then
    call "VTL"."P_VTLDocumentsDelete"(@DocumentId)
  else
    set @ErrorMessage = 'Invalid Row ID';
    set @Success = 0
  end if;
  select @Success as "Success",
    "isnull"(@ErrorMessage,'Saved Successfully') as "ErrorMessage" from "sys"."dummy"
end