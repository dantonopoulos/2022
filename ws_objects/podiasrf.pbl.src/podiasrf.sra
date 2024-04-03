$PBExportHeader$podiasrf.sra
$PBExportComments$Generated Application Object
forward
global type podiasrf from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
n_podiasrf_connectservice gnv_app  
string GS_currentpath, gs_filename
string gs_url,  gs_user_id , gs_subscr_key, ls_body
datetime gs_dfrom, gs_dto
dec ld_kinisi_pid
string gs_log_level, gs_load_what
long gi_log_level, gl_load_what

end variables

global type podiasrf from application
string appname = "podiasrf"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 22.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 5
long richtexteditx64type = 5
long richtexteditversion = 3
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "22.2.0.3289"
boolean manualsession = false
boolean unsupportedapierror = false
boolean ultrafast = false
boolean bignoreservercertificate = false
uint ignoreservercertificate = 0
long webview2distribution = 0
boolean webview2checkx86 = false
boolean webview2checkx64 = false
string webview2url = "https://developer.microsoft.com/en-us/microsoft-edge/webview2/"
end type
global podiasrf podiasrf

type variables

end variables

on podiasrf.create
appname="podiasrf"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on podiasrf.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;gnv_app = create n_podiasrf_connectservice
long conn, err
gs_filename = 'POdiasRF.txt'
GS_currentpath=getcurrentdirectory()
messagebox('GS_currentpath',GS_currentpath)
fx_log_file('*************************************************************',0)
fx_log_file('opening App',0)
fx_log_file('Username:' + sqlca.logid,0)


//fileopen
conn = gnv_app.of_connectdb()
//messagebox('conn',string(conn))
fx_log_file('Connection:' + string(conn),1)
string ls_currentdb
select db_name() into :ls_currentdb from sec_company_data;
fx_log_file('Connected DB:' + ls_currentdb,1)
fx_log_file('Log level:' + gs_log_level,0)


//fx_message(0)

//err = fx_read_credentials()
//if err <> 0 then
//	halt
//end if
//
//err = fx_sendinvoices()
//if err <> 0 then
//	halt
//end if
//fx_message(1)
//
////open(w_test)
end event

