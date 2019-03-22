create procedure "_SEAS"."ChemistryPropertiesLoad"( 
  in @VesselId smallint,
  in @Month char(10) ) 
result( 
  "VesselName" char(80),
  "Month" char(10),
  "Severity" char(20),
  "LastReceived" char(10),
  "Method" char(20),
  "LastLogDate" char(10),
  "Reviewer" char(85),
  "ReviewDate" char(10),
  "Priority" char(20),
  "BeingWatched" bit,
  "IsCompleted" bit ) 
begin
  call "SEAS"."ChemistryPropertiesLoad"(@VesselId,@Month)
end