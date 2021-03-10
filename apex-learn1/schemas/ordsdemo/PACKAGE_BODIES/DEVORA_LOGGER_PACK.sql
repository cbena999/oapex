CREATE OR REPLACE package body devora_logger_pack$ as

    procedure log_msg(p_dbg_msg in varchar2, p_tlog in VARCHAR2)
           is
      lv_wk_name varchar2(100);
	  lv_application_name varchar2(100);
	  lv_page_name varchar2(100);
	  lv_app_user varchar2(100);
	  lv_app_session varchar2(100);
	  lv_app_id varchar2(100);
      lv_app_page_id  varchar2(100);
	  lv_app_page_name  varchar2(100);

	begin

     if p_tlog = 'a' then  -- es para logear APEX
	   lv_app_page_id := nvl(V('APP_PAGE_ID'), null);
	   lv_app_user := nvl(V('APP_USER'), null);
	   lv_app_session := nvl(V('APP_SESSION'), null);
	   lv_app_id := nvl(V('APP_ID'), null);

	   
	   select workspace, application_name, page_name INTO lv_wk_name, lv_application_name , lv_page_name from APEX_200200.APEX_APPLICATION_PAGES
	     where page_id = lv_app_page_id and application_id =  lv_app_id;
	 end if; 

 	   lv_app_page_name :=  'Wks: ' ||  lv_wk_name ||    ' -> App: ' || lv_app_id || ' - '|| lv_application_name ||  ' -> Page: '|| lv_app_page_id || ' : ' || lv_page_name;


       insert into devora_logger$(
              id,
              curr_timestamp,
			  app_title,
			  app_user,
			  app_session,
              back_trace,
			  dbg_msg,
			  error_stack,
			  call_stack )
       values(devora_logger_sequence$.nextval,
              current_timestamp,
              lv_app_page_name,
              lv_app_user,
              lv_app_session,
              dbms_utility.format_error_backtrace,
			  p_dbg_msg,
              dbms_utility.format_error_stack,  			  
			  dbms_utility.format_call_stack);
      commit;
    end log_msg;
end devora_logger_pack$;