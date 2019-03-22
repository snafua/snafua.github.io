create procedure "_PNG"."CompartmentsInsert"( 
  in @Compartment char(128) ) 
begin
  call "PNG"."CompartmentsInsert"(@Compartment)
end