create procedure -- JHM
"_PEM"."ContractingOfficerDetails"( 
  in @ContractingOfficerId integer ) 
result( 
  "ContractingOfficerId" integer,
  "PersonFullName" char(128) ) 
begin
  /*
2018-06-21 JHM - E-03290: Created
*/
  call "PEM"."ContractingOfficerDetails"(@ContractingOfficerId)
end