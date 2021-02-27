--------------------------------------------------------
--  DDL for Package Body BLOG_ANGEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "ORDSDEMO"."BLOG_ANGEL" is
procedure TEST_2_PARAM(P_ARG1 IN VARCHAR2
      ,P_ARG2 IN VARCHAR2
)
as
begin
 null; /* insert procedure code */
 dbms_output.put_line (P_ARG1);
 dbms_output.put_line (P_ARG2);
end TEST_2_PARAM;


end BLOG_ANGEL;


/
