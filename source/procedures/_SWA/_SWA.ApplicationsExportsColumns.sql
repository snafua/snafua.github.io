create procedure "_SWA"."ApplicationsExportsColumns"( 
  in @ApplicationId integer,
  in @ColumnData long varchar default null,
  in @GridId integer default null ) 
result( 
  "ColumnName" char(256),
  "ColumnDisplayedAs" char(256),
  "ColumnWidth" numeric(10,2),
  "FontSize" integer,
  "TextUnderline" char(20),
  "HorizontalAlignment" char(20),
  "FontFamily" char(256),
  "FontColor" integer,
  "FontBold" bit,
  "FontItalic" bit,
  "TextWrap" bit,
  "TextStrikeout" bit,
  "CanBeGrouped" bit,
  "JavaDataType" char(15) ) 
begin
  call "SWA"."ApplicationsExportsColumns"(@ApplicationId,@ColumnData,@GridId)
end