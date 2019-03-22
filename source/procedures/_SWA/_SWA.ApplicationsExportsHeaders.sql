create procedure "_SWA"."ApplicationsExportsHeaders"( 
  in @ApplicationId integer,
  in @HeaderValues long varchar default null,
  in @GridId integer default null ) 
result( 
  "HeaderLine" integer,
  "HeaderText" char(256),
  "FontSize" integer,
  "TextUnderline" char(20),
  "HorizontalAlignment" char(20),
  "FontFamily" char(256),
  "FontColor" integer,
  "FontBold" bit,
  "FontItalic" bit,
  "TextWrap" bit,
  "TextStrikeout" bit ) 
begin
  call "SWA"."ApplicationsExportsHeaders"(@ApplicationId,@HeaderValues,@GridId)
end