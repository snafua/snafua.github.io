create procedure --JLD
"_SWA"."NavigationModules"()
result( 
  "ModuleApplicationId" integer,
  "ModuleParentId" integer,
  "ModuleLabel" char(128),
  "ModuleCSSClass" char(128),
  "ModuleNavigationSecondary" char(128),
  "ModuleWindowProperties" char(128),
  "ModuleActive" bit,
  "ModuleOrder" integer,
  "ExternalModuleInstallation" char(128),
  "ExternalModuleUrl" char(128),
  "ExternalModuleUrlHash" char(128),
  "InternalModuleName" char(128),
  "InternalModuleState" char(128),
  "InternalModuleUrl" char(128),
  "ModuleVisible" bit,
  "InternalModuleFilePath" char(256),
  "ModuleNavigationPrimary" bit,
  "ModuleTarget" char(128),
  "ModuleDivider" char(128),
  "InternalModuleFilename" char(128) ) 
begin
  /*
2017-03-16 RJM Added Shoreside Dashboard
2017-07-05 RJM Updated Certificate Manager AppId
2018-02-01 JLD Updated log entry values and added a new record
2018-03-19 E-03800 JLD Updated 1501 ModuleLabel and ModuleNavigationSecondary values
2018-03-20 E-03927 JLD Added ModuleVisible, InternalModuleFilePath, ModuleNavigationPrimary, ModuleTarget, ModuleDivider, and InternalModuleFilename and added a new Workbook PE row
2018-06-04 JHME-04295 Added SMS/Findings
2018-06-13 RJM Added CMS
2018-06-28 JLD E-04295 B-18212
*/
  declare local temporary table @Modules(
    "ModuleApplicationId" integer null,
    "ModuleParentId" integer null,
    "ModuleLabel" char(128) null,
    "ModuleCSSClass" char(128) null,
    "ModuleNavigationSecondary" char(128) null,
    "ModuleWindowProperties" char(128) null,
    "ModuleActive" bit not null,
    "ModuleOrder" integer null,
    "ExternalModuleInstallation" char(128) null,
    "ExternalModuleUrl" char(128) null,
    "ExternalModuleUrlHash" char(128) null,
    "InternalModuleName" char(128) null,
    "InternalModuleState" char(128) null,
    "InternalModuleUrl" char(128) null,
    "ModuleVisible" bit not null,
    "InternalModuleFilePath" char(256) null,
    "ModuleNavigationPrimary" bit not null,
    "ModuleTarget" char(128) null,
    "ModuleDivider" char(128) null,
    "InternalModuleFilename" char(128) null,
    ) not transactional;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 1000,null,'Dashboards',null,'Filter','emprise,Ext,samm',1,100,'/sammweb','/sammweb',null,null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 1001,1000,'Shipboard Dashboard',null,'Filter','emprise,Ext,samm',1,110,'/sammweb','/sammweb','/sammweb/shipboarddashboard',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 1002,1000,'Vessel / Propulsion',null,'Filter','emprise,Ext,samm',1,130,'/sammweb','/sammweb','/sammweb/vesselpropulsion',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 1003,1000,'Consumption',null,'Filter','emprise,Ext,samm',1,140,'/sammweb','/sammweb','/sammweb/consumption',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 1004,1000,'Specific Fuel Consumption',null,'Filter','emprise,Ext,samm',1,150,'/sammweb','/sammweb','/sammweb/specificfuelconsumption',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 1005,1000,'Shoreside Dashboard',null,'Filter','emprise,Ext,samm',1,120,'/sammweb','/sammweb','/sammweb/shoresidedashboard',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 1500,null,'Logbook',null,'Filter','emprise,Ext,samm',1,175,null,null,null,'Logbook','logbook','/modules/logbook',1,'/modules/logbook',1,null,null,'logbook' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 1501,1500,'View Logs',null,'Filter','emprise,Ext,samm',0,180,null,null,null,'Logs','logbook.logs','/logs',0,'/logs',1,null,null,'logs' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    --  VALUES(               1502,                 1500,           'Navigation Logs',            NULL,           NULL,                       'emprise,Ext,samm',     0,            195,          NULL,                       NULL,               NULL,                               'LogbookLogsNavigation',  'logbook.logsNavigation',     '/logs/navigation',     0,              '/logs/navigation',     0,                        '_blank',     'before',       'navigation' );
    ( 1502,1500,'Navigation Logs',null,null,'emprise,Ext,samm',0,195,null,null,null,'LogbookLogsNavigation','logbook.logsNavigation','/logs/navigation',0,'/logs/navigation',0,'_blank',null,'navigation' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 501,1500,'Certificate Manager',null,'Filter','emprise,Ext,samm',1,185,null,null,null,'CertificateManager','logbook.certificatemanager','/certificateManager',1,'/certificateManager',1,null,null,'certificateManager' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 2000,null,'History',null,'Filter','emprise,Ext,samm',1,200,'/machineryhistory','/sammweb',null,'History','history','/modules/history',1,'/modules/history',1,null,null,'history' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 301,2000,'History Items',null,'Filter','emprise,Ext,samm',1,210,'/machineryhistory','/sammweb','/machineryhistory/historyitems','HistoryItems','history.historyitems','/historyItems',1,'/historyItems',1,null,null,'historyItems' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 308,2000,'PM Compliance',null,'Filter','emprise,Ext,samm',1,220,'/machineryhistory','/sammweb','/machineryhistory/pmcompliance','PMCompliance','history.pmcompliance','/pmCompliance',1,'/pmCompliance',1,null,null,'pmCompliance' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 3000,null,'Afloat M&R',null,'Filter','emprise,Ext,samm',1,300,null,null,null,'AfloatMR','afloatmr','/modules/afloatmr',1,'/modules/afloatmr',1,null,null,'afloatMR' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 350,3000,'Work Request',null,'Filter','emprise,Ext,samm',1,310,null,null,null,'WorkRequest','afloatmr.workrequest','/workRequest',1,'/workRequest',1,null,null,'workRequest' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 351,3000,'Corrective Maintenance',null,'Filter','emprise,Ext,samm',1,320,null,null,null,'CorrectiveMaintenance','afloatmr.correctivemaintenance','/correctiveMaintenance',1,'/correctiveMaintenance',1,null,null,'correctiveMaintenance' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 352,3000,'Planned Maintenance',null,'Filter','emprise,Ext,samm',1,330,null,null,null,'PlannedMaintenance','afloatmr.plannedmaintenance','/plannedMaintenance',1,'/plannedMaintenance',1,null,null,'plannedMaintenance' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 353,3000,'Workbook',null,'Filter','emprise,Ext,samm',1,340,null,null,null,'Workbook','afloatmr.workbook','/workbook',1,'/workbook',1,null,null,'workbook' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 353,3000,'PE Workbook',null,null,'emprise,Ext,samm',1,340,null,null,null,'Workbook','afloatmr.workbookpe','/workbook/pe',0,'/workbook',0,null,null,'workbook' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 4000,null,'Ashore M&R',null,'Filter','emprise,Ext,samm',1,400,'/cmplanning','/sammweb',null,null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 302,4000,'VRRs',null,'Filter','emprise,Ext,samm',1,410,'/cmplanning','/sammweb','/cmplanning/vrr',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 306,4000,'PMIA',null,'Filter','emprise,Ext,samm',1,420,'/cmplanning','/sammweb','/cmplanning/pmia',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 309,4000,'T-Alt Ship',null,'Filter','emprise,Ext,samm',1,430,'/transalt','/sammweb','/cmplanning/taltship',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 307,4000,'Availabilities',null,'Filter','emprise,Ext,samm',1,440,'/cmplanning','/sammweb','/cmplanning/availabilities',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 310,4000,'Historical Items',null,'Filter','emprise,Ext,samm',1,450,'/cmplanning','/sammweb','/cmplanning/historicalitems',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 311,4000,'Library Items',null,'Filter','emprise,Ext,samm',1,460,'/cmplanning','/sammweb','/cmplanning/libraryitems',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 5000,null,'Training',null,'Progress','emprise,Ext,samm',1,500,null,null,null,'Training','training','/modules/training',1,'/modules/training',1,null,null,'training' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 305,5000,'Training',null,'Progress','emprise,Ext,samm',1,510,null,null,null,'Training','training.training','/training',1,'/training',1,null,null,'training' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 6000,null,'VTL',null,'Filter','emprise,Ext,samm',1,600,'/VTL','/sammweb',null,null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 321,6000,'VTL',null,'Filter','emprise,Ext,samm',1,610,'/VTL','/sammweb','/VTL/vtl',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 6000,null,'VTL',null,'Filter','emprise,Ext,samm',1,600,'/vtl','/sammweb',null,null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 321,6000,'VTL',null,'Filter','emprise,Ext,samm',1,610,'/vtl','/sammweb','/vtl/vtl',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 7000,null,'Admin',null,'Filter','emprise,Ext,samm',1,700,'/tasktracker','/sammweb',null,'Admin','admin','/modules/admin',1,'/modules/admin',1,null,null,'admin' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 7001,7000,'Task Manager',null,'Filter','emprise,Ext,samm',1,710,'/tasktracker','/sammweb','/tasktracker/taskmanager',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 7002,7000,'TransAlt-PM',null,'Filter','emprise,Ext,samm',1,720,'/tasktracker','/sammweb','/tasktracker/transaltpm',null,null,null,1,null,1,null,null,null ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 354,7000,'User Management',null,'Filter','emprise,Ext,samm',1,740,null,null,null,'UserManagement','admin.usermanagement','/userManagement',1,'/userManagement',1,null,null,'userManagement' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 355,7000,'Role Management',null,'Filter','emprise,Ext,samm',1,750,null,null,null,'RoleManagement','admin.rolemanagement','/roleManagement',1,'/roleManagement',1,null,null,'roleManagement' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 8000,null,'AMS',null,'Filter','emprise,Ext,samm',1,800,null,null,null,'AMS','ams','/modules/ams',1,'/modules/ams',1,null,null,'ams' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 8001,8000,'AMS',null,'Filter','emprise,Ext,samm',1,810,null,null,null,'AMS','ams.ams','/ams',1,'/ams',1,null,null,'ams' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 9000,null,'SMS',null,'Filter','emprise,Ext,samm',1,900,null,null,null,'SMS','sms','/modules/sms',1,'/modules/sms',1,null,null,'sms' ) ;
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 356,9000,'Findings',null,'dist/modules/sms/findings/navigation.html','emprise,Ext,samm',1,910,null,null,null,'SMSFindings','sms.findings','/findings',1,'/findings',1,null,null,'findings' ) ;
  --CMS
  insert into @Modules( "ModuleApplicationId","ModuleParentId","ModuleLabel","ModuleCSSClass","ModuleNavigationSecondary","ModuleWindowProperties","ModuleActive","ModuleOrder","ExternalModuleInstallation","ExternalModuleUrl","ExternalModuleUrlHash","InternalModuleName","InternalModuleState","InternalModuleUrl","ModuleVisible","InternalModuleFilePath","ModuleNavigationPrimary","ModuleTarget","ModuleDivider","InternalModuleFilename" ) values
    ( 502,3000,'CMS',null,'Filter','emprise,Ext,samm',1,920,null,null,null,'AfloatMRCMS','afloatmr.cms','/cms',1,'/cms',1,null,null,'cms' ) ;
  select "ModuleApplicationId",
    "ModuleParentId",
    "ModuleLabel",
    "ModuleCSSClass",
    "ModuleNavigationSecondary",
    "ModuleWindowProperties",
    "ModuleActive",
    "ModuleOrder",
    "ExternalModuleInstallation",
    "ExternalModuleUrl",
    "ExternalModuleUrlHash",
    "InternalModuleName",
    "InternalModuleState",
    "InternalModuleUrl",
    "ModuleVisible",
    "InternalModuleFilePath",
    "ModuleNavigationPrimary",
    "ModuleTarget",
    "ModuleDivider",
    "InternalModuleFilename"
    from @Modules
    order by "ModuleOrder" asc
end