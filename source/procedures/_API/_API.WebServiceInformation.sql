create procedure "_API"."WebServiceInformation"( 
  in @ServiceName char(128) ) 
result( 
  "ParameterName" char(128),
  "DataType" char(128),
  "Type" char(10),
  "Description" long varchar,
  "SQL" long varchar,
  "ServiceType" varchar(40) ) 
begin
  call "API"."WebServiceInformation"(@ServiceName)
end