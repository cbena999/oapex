
create or replace package devora_logger_pack$ as 
   procedure log_msg (p_dbg_msg in varchar2 ); 
end devora_logger_pack$; 
/
