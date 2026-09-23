--parameter sorgu
select component,current_size,min_size 
from V$memory_dynamic_components;

-- 1-)SGA Target sorgu
 select sum(value) from V$SGA;
--free memory dynamic
 select current_size from V$sga_dynamic_free_memory;
-- 2-)Sga_target - free_memory=sga_target_size
  

-- Set Parameters 
alter system set memory_target=0 scope=spfile;
alter system set memory_max_target=0 scope=spfile;
alter system set shared_pool_size=0 scope=spfile;
alter system set large_pool_size=0 scope=spfile;
alter system set java_pool_size=0 scope=spfile;
alter system set db_cache_size=0 scope=spfile;
alter system set streams_pool_size=0 scope=spfile;

alter system set sga_target=<1>M scope=spfile;
alter system set pga_aggregate_target=<2>M scope=spfile;


