create procedure "_SWA"."SuggestionsAttachmentSave"( 
  in @SuggestionId integer,
  in @SuggestionAttachmentFileName char(256),
  in @SuggestionDocument long varchar ) 
result( "Success" bit,"ErrorMessage" long varchar ) 
begin
  declare @ErrorMessage long varchar;
  call "SWA"."SuggestionsAttachmentSave"(@SuggestionId,@SuggestionAttachmentFileName,@SuggestionDocument);
  select 1 as "Success",'' as "ErrorMessage" from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",@ErrorMessage as "ErrorMessage" from "DUMMY"
end