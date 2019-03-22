create procedure "_VTL"."DocumentsITARs"()
result( 
  "ITAR" char(1),
  "ITARDisplay" char(259) ) 
begin
  call "VTL"."DocumentsITARs"()
end