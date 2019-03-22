create procedure "_SMH"."Navigation"( 
  in @SMHModule char(25),
  in @NodeType char(10) default 'Vessel',
  in @NodeString char(256) default null ) 
result( 
  "NodeId" char(256),
  "NodeName" char(128),
  "HasChildren" integer ) 
begin
  set @SMHModule = "TRIM"(@SMHModule);
  set @NodeType = "TRIM"(@NodeType);
  set @NodeString = "TRIM"(@NodeString);
  if @SMHModule = '' then set @SMHModule = null end if;
  if @NodeString = '' then set @NodeString = null end if;
  if @NodeType = '' then set @NodeType = null end if;
  if @SMHModule = 'null' then set @SMHModule = null end if;
  if @NodeString = 'null' then set @NodeString = null end if;
  if @NodeType = 'null' then set @NodeType = null end if;
  if @SMHModule = 'History Items' then set @SMHModule = 'History'
  else set @SMHModule = 'Statistics' end if;
  call "SMH"."Navigation"(@SMHModule,@NodeType,@NodeString)
end