create procedure "_SEAS"."LubeOilCommentsPriorities"()
result( "Priority" char(20),"PriorityIndex" smallint,"PriorityMinIndex" smallint,"PriorityMaxIndex" smallint ) 
begin
  call "SEAS"."LubeOilCommentsPriorities"()
end