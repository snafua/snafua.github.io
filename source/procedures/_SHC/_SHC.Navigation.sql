create procedure "_SHC"."Navigation"( in @NodeType char(10) default 'Vessel',in @NodeString char(256) default null ) 
result( "NodeId" char(256),"NodeName" char(128),"HasChildren" integer ) 
begin
  set @NodeType = "TRIM"(@NodeType);
  set @NodeString = "TRIM"(@NodeString);
  if @NodeString = '' then set @NodeString = null
  end if;
  if @NodeType = '' then set @NodeType = null
  end if;
  if @NodeString = 'null' then set @NodeString = null
  end if;
  if @NodeType = 'null' then set @NodeType = null
  end if;
  call "SHC"."Navigation"(@NodeType,@NodeString)
end