create procedure "_VTL"."DocumentsVesselsDelete"( in @RowId char(1024),in @NodeId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsVesselsDelete"(@RowId,@NodeId)
end