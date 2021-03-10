CREATE OR REPLACE package devora_logger_pack$ as
   procedure log_msg (p_dbg_msg in varchar2, p_tlog in VARCHAR2 );
end devora_logger_pack$;