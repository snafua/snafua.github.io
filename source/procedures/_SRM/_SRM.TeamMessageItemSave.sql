create procedure "_SRM"."TeamMessageItemSave"( 
  in @RowId char(1024),
  in @TeamMessageId integer,
  in @TeamMessageTo long varchar,
  in @TeamMessage long varchar ) 
begin
  call "SRM"."TeamMessageItemSave"(@RowId,@TeamMessageId,@TeamMessageTo,@TeamMessage)
end