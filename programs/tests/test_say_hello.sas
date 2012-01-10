/*********************************************
* Roy Pardee
* Group Health Research Institute
* (206) 287-2078
* pardee.r@ghc.org
*
* c:\Documents and Settings\pardre1\My Documents\vdw\test_vdw\programs\tests\test_say_hello.sas
*
* <<purpose>>
*********************************************/

options
  linesize  = 150
  msglevel  = i
  formchar  = '|-++++++++++=|-/|<>*'
  dsoptions = note2err
  nocenter
  noovp
  nosqlremerge
;

%**let my_sites_proxy_settings = ;
%let my_sites_proxy_settings = %str(proxy = 'http://proxy.ghc.org:8080') ;
%let url = https://github.com/rpardee/test_vdw/raw/master/programs/say_hello.sas ;

filename testprog
  URL "&url"
  &my_sites_proxy_settings
;

** Testing the test (!) ;
**filename testprog 'C:\Documents and Settings\pardre1\My Documents\vdw\test_vdw\programs\say_hello.sas' ;

%include testprog ;

%say_hello ;

run ;