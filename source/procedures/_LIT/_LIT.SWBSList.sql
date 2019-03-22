create procedure "_LIT"."SWBSList"()
result( 
  "SWBS" char(4),
  "SWBSTitle" char(128) ) 
begin
  call "LIT"."SWBSList"()
end