create procedure "_SWA"."ClientApplications"()
result( 
  "ApplicationLabel" char(128),
  "ApplicationValue" char(128) ) 
begin
  declare local temporary table @Applications(
    "ApplicationLabel" char(128) null,
    "ApplicationValue" char(128) null,
    "RecordSequence" integer null,
    ) not transactional;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Emprise Logbook','Logbook',1 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Emprise Shipslog','Shipslog',2 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Condition Monitoring','ConditionMonitoring',3 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Machinery History','MachineryHistory',4 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Planned Maintenance','PlannedMaintenance',5 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Workbook','Workbook',6 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Repair','Repair',7 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Equipment Report','EquipmentReport',8 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'ABS Equipment','ABSEquipment',9 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Utilities','Utilities',10 ) ;
  insert into @Applications( "ApplicationLabel","ApplicationValue","RecordSequence" ) values
    ( 'Emprise EReporter','EReporter',11 ) ;
  select "ApplicationLabel",
    "ApplicationValue"
    from @Applications
    order by "RecordSequence" asc
end