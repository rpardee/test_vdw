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

/*

  This "proxy settings" var can be ignored/left blank at most sites.

  Some orgs route all web (http/https) traffic through a single server on their
  internal network, which acts as an intermediary between the computer where
  this program runs and the server named on the URL below.  Sites that do that
  *may* need to manually name their proxy server so SAS can address it its request
  for the named file.

  At Group Health, if I try to run w/out specifying a proxy the error I get is:

    ERROR: The connection has timed out..

  If you get that error and are keen to be able to do this, please get in touch
  with me and I will see if I can help you figure out what your proxy server is
  (or maybe ask your local network support folks).

*/

%let my_sites_proxy_settings = ;
%**let my_sites_proxy_settings = %str(proxy = 'http://proxy.ghc.org:8080') ;
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