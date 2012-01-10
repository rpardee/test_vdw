/*********************************************
* Roy Pardee
* Group Health Research Institute
* (206) 287-2078
* pardee.r@ghc.org
*
* c:\Documents and Settings\pardre1\My Documents\vdw\test_vdw\programs\say_hello.sas
*
* A little "hello world" sort of macro that will allow us to test whether sites can
* load SAS programs from web sources (including especially github).
*********************************************/

%macro say_hello ;
  %local i ;
  %do i = 1 %to 10 ;
    %put SUCCESS!!!  YOU CAN READ CODE FROM AN WEB SOURCE!!! ;
  %end ;
%mend say_hello ;