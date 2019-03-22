create procedure "_SWA"."PasswordRequirements"()
result( 
  "CharactersUppercaseMinimum" integer,
  "CharactersLowercaseMinimum" integer,
  "CharactersNumericMinimum" integer,
  "CharactersSpecialMinimum" integer,
  "MinimumLength" integer,
  "MaximumLength" integer,
  "IncludeCharacters" char(128),
  "SpecialCharacters" char(128),
  "RequirementsDescription" long varchar,
  "RequirementsDescriptionHTML" long varchar ) 
begin
  call "SWA"."PasswordRequirements"()
end