create function "_SWA"."SessionsValidate"( 
  in @Token "UNIQUEIDENTIFIERSTR" ) 
returns bit begin
  return("SWA"."SessionsValidate"(@Token))
end