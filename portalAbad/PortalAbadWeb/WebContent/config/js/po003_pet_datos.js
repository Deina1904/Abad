function cargarben(cuenta,comboben){var combo1=document.all["ctasben"];if(cuenta==" "){alert("Debe seleccionar una cuenta origen");}else{combonuevo="<select name=\"CtaBeneficiaria\" size=\"1\">"+"<option value=\"\"></option>";for(var i=0;i<comboben.length;i++){if(comboben.options[i].text!=cuenta){var item=comboben.options[i].value;var textitem=comboben.options[i].text;combonuevo=combonuevo+"<option value=\""+item+"\">"+textitem+"</option>";}}combonuevo=combonuevo+"</select>";combo1.innerHTML=combonuevo;}};function Validar(form){var cuentaOrd=form.CtaOrdenante.options[form.CtaOrdenante.selectedIndex].value;var cuentaBen=form.CtaBeneficiaria.options[form.CtaBeneficiaria.selectedIndex].value;var Diap=form.Dia.value;var Mesp=form.Mes.value;var Aniop=form.Anio.value;var fechap=Aniop+Mesp+Diap;var dia=form.DiaMensual.value;var numeromes=form.NumMes.options[form.NumMes.selectedIndex].value;var importe=form.Valor.value;var bResultado=true;var FechaSis=fechaSistema(new Date());var dias=FechaSis.substring(6,8);var mess=FechaSis.substring(4,6);var anos=FechaSis.substring(0,4);var fechaS=anos+mess+dias;if(cuentaOrd==""){alert("Debe seleccionar un n�mero de Cuenta Ordenante");form.CtaOrdenante.focus();bResultado=false;}if(bResultado&&cuentaBen==""){alert("Debe seleccionar un n�mero de Cuenta Beneficiaria");form.CtaBeneficiaria.focus();bResultado=false;}if(bResultado&& !form.Periodo[0].checked&& !form.Periodo[1].checked){alert("Debe seleccionar un periodo para programar sus operaciones");bResultado=false;}if(bResultado&&form.Periodo[0].checked){if(!checkdate(Diap,Mesp,Aniop)){alert("Formato de Fecha err�neo");form.Dia.focus();form.Dia.select();bResultado=false;}if(bResultado&&fechap<fechaS){alert("La Fecha Puntual debe ser mayor o igual a la Fecha Actual");form.FechaPuntual.focus();bResultado=false;}}if(bResultado&&form.Periodo[1].checked){if(!EsNumero(dia)){alert("El d�a de abono debe ser num�rico");form.DiaMensual.focus();bResultado=false;}if(dia<01&&dia>12){alert("El d�a de abono no es valido");form.DiaMensual.focus();bResultado=false;}if(numeromes==""){alert("Debe seleccionar un n�mero de mes");form.NumMes.focus();bResultado=false;}}if(bResultado&&importe==""){alert("Debe llenar el campo valor de la operaci�n");form.Valor.focus();bResultado=false;}if(bResultado&& !EsNumero(importe)){alert("El valor de la operaci�n debe ser num�rico");form.Valor.focus();bResultado=false;}if(bResultado){form.submit();}}