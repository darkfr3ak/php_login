<?php

$smtp = new SMTP();

$smtp->host_name = "smtp.gmail.com";    /* Change this variable to the address of the SMTP server to relay, like "smtp.myisp.com" */
$smtp->host_port = 465;                 /* Change this variable to the port of the SMTP server to use, like 465 */
$smtp->ssl = 1;                         /* Change this variable if the SMTP server requires an secure connection using SSL */

//$smtp->http_proxy_host_name='209.85.225.109';     /* Change this variable if you need to connect to SMTP server via an HTTP proxy */
//$smtp->http_proxy_host_port=465;      /* Change this variable if you need to connect to SMTP server via an HTTP proxy */

$smtp->socks_host_name = '';            /* Change this variable if you need to connect to SMTP server via an SOCKS server */
$smtp->socks_host_port = 1080;          /* Change this variable if you need to connect to SMTP server via an SOCKS server */
$smtp->socks_version = '5';             /* Change this variable if you need to connect to SMTP server via an SOCKS server */

$smtp->start_tls = 0;                   /* Change this variable if the SMTP server requires security by starting TLS during the connection */
$smtp->localhost = "localhost";         /* Your computer address */
$smtp->direct_delivery = 0;             /* Set to 1 to deliver directly to the recepient SMTP server */
$smtp->timeout = 10;                    /* Set to the number of seconds wait for a successful connection to the SMTP server */
$smtp->data_timeout = 0;                /* Set to the number seconds wait for sending or retrieving data from the SMTP server.
  Set to 0 to use the same defined in the timeout variable */
$smtp->debug = 0;                       /* Set to 1 to output the communication with the SMTP server */
$smtp->html_debug = 0;                  /* Set to 1 to format the debug output as HTML */
$smtp->pop3_auth_host = "";             /* Set to the POP3 authentication host if your SMTP server requires prior POP3 authentication */
$smtp->user = "chlaum";                 /* Set to the user name if the server requires authetication */
$smtp->realm = "";                      /* Set to the authetication realm, usually the authentication user e-mail domain */
$smtp->password = "Thanatos83";         /* Set to the authetication password */
$smtp->workstation = "";                /* Workstation name for NTLM authentication */
$smtp->authentication_mechanism = "";   /* Specify a SASL authentication method like LOGIN, PLAIN, CRAM-MD5, NTLM, etc..
  Leave it empty to make the class negotiate if necessary */