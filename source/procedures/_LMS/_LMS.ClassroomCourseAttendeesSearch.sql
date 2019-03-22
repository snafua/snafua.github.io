create procedure "_LMS"."ClassroomCourseAttendeesSearch"( 
  in @VesselId integer,
  in @ParentNodeId char(1024) default null,
  in @SearchQuery char(1024) default null ) 
result( 
  "NodeId" char(1024),
  "NodeText" char(1024),
  "HasChildren" bit,
  "IsExpanded" bit ) 
begin
  call "LMS"."ClassroomCourseAttendeesSearch"(@VesselId,@ParentNodeId,@SearchQuery)
end