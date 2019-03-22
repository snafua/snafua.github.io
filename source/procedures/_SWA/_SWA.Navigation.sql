create procedure "_SWA"."Navigation"( 
  in @Module char(25),
  in @NodeId char(256) default null ) 
begin
  call "SWA"."NavigationByVessel"(@Module,@NodeId)
end