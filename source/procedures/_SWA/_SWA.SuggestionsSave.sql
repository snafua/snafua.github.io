create procedure "_SWA"."SuggestionsSave"( 
  in @SuggestionToId integer,
  in @SuggestionTo char(256),
  in @SuggestionFromID integer,
  in @SuggestionFrom char(256),
  in @SuggestionType char(25),
  in @Subject char(512),
  in @Message long varchar ) 
result( "SuggestionId" integer,"ErrorMessage" long varchar ) 
begin
  declare @SuggestionId integer;
  declare @ErrorMessage long varchar;
  set @SuggestionId = "SWA"."SuggestionsSave"(@SuggestionToId,@SuggestionTo,@SuggestionFromID,@SuggestionFrom,@SuggestionType,@Subject,@Message);
  select @SuggestionId as "SuggestionId",'' as "ErrorMessage" from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select null as "SuggestionId",@ErrorMessage as "ErrorMessage" from "DUMMY"
end