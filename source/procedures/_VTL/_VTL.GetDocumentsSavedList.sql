create procedure "_VTL"."GetDocumentsSavedList"( in @UserId integer default null ) 
result( "SavedList" long varchar ) 
begin
  call "VTL"."GetDocumentsSavedList"(@UserId)
end