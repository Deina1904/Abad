
function openWin(html,name,w,h){myWin=open(html,name,"width="+w+",height="+h+",status=no,titlebar=yes,toolbar=no,left=200,top=100,menubar=no,scrollbars=yes");};function eligeOpcion(nombre1,valor1,nombre2,valor2,nombre3,valor3,nombre4,valor4){minombre1=eval("window.opener.document.forms[0]."+nombre1);minombre2=eval("window.opener.document.forms[0]."+nombre2);minombre3=eval("window.opener.document.forms[0]."+nombre3);minombre4=eval("window.opener.document.forms[0]."+nombre4);minombre5=eval("window.opener.document.forms[0]."+nombre5);minombre6=eval("window.opener.document.forms[0]."+nombre6);minombre1.value=valor1;minombre2.value=valor2;minombre3.value=valor3;minombre4.value=valor4;minombre5.value=valor5;minombre6.value=valor6;window.close();};function abrirVentana(html,name){ventana=window.open(html,name,"width=400,height=250,status=no,titlebar=yes,toolbar=no,menubar=no,left=280,top=180,scrollbars=yes");}