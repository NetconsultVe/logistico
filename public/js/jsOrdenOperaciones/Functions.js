;(function(win){
    var TableOrdenPanaderia;
    LoadFunctions.asig_OrdenOperaciones = function(){
        Ajax("asig_OrdenOperaciones", LoadVars, function(data){
            InitControl();
            LoadFunctions.list_OrdenOperaciones();
            LoadFunctions.list_OrdenOperacionesResponsable("cmb-responsable");
        }, true);
    }

    LoadFunctions.list_OrdenOperaciones = function(){
        Ajax("list_OrdenOperaciones", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){
                switch (Number(data[i]["Status"])) {
                    case 0:
                        data[i]["Status"] = "SIN PLANIFICAR";
                        break;
                    case 1:
                        data[i]["Status"] = "PLANIFICADA";
                        break;
                    case 2:
                        data[i]["Status"] = "PROCESADA";
                        break;
                    case 3:
                        data[i]["Status"] = "ACTIVA";
                    break;
                    case 4:
                        data[i]["Status"] = "COMPLETADA";
                    break;
                } 
                strTd += '<tr>';
                strTd += CreateTd(data[i]["cod_OrdenOperacion"], "center");
                strTd += isNull(data[i]["FechaInicio"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["FechaInicio"] + " - " + data[i]["FechaFin"] + '</td>';
                strTd += CreateTd(data[i]["Nombre"], "center");
                strTd += CreateTd(data[i]["TelefonoPpal"], "center");
                strTd += CreateTd(data[i]["Status"], "center");
                strTd += '<td style="text-align: center;">';
                if(data[i]["count_Planificado"] == 0){
                    if(data[i]["Status"] == "SIN PLANIFICAR"){
                        strTd += '<button type="button" data-toggle="tooltip" title="PLANIFICAR ORDEN DE OPERACION" class="btn btn-primary btn-flat" id="btn_PlanificarOrden"><i class="fa fa-pencil-square-o" id =' + data[i]["id"] + '></i></button>';
                    }
                }
                if(data[i]["Status"] == "PLANIFICADA"){
                    strTd += '<button type="button" data-toggle="tooltip" title="PLANIFICAR ORDEN DE OPERACION" class="btn btn-primary btn-flat" id="btn_PlanificarOrden"><i class="fa fa-pencil-square-o" id =' + data[i]["id"] + '></i></button>';
                    strTd += '<button type="button" data-toggle="tooltip" title="CANCELAR PLANIFICACION" class="btn btn-danger btn-flat" id="btn_CancelarPlanificarOrden"><i class="fa fa-close" id =' + data[i]["id"] + '></i></button>';
                    strTd += '<button type="button" data-toggle="tooltip" title="PROCESAR ORDEN DE OPERACION" class="btn btn-primary btn-flat" id="btn_ProcesarOrden"><i class="fa fa-download" id =' + data[i]["id"] + '></i></button>';
                }
                if(data[i]["Status"] == "PROCESADA"){
                    strTd += '<button type="button" data-toggle="tooltip" title="ACTIVAR ORDEN DE OPERACION" class="btn btn-primary btn-flat" id="btn_ActivarOrden"><i class="fa fa-power-off" id =' + data[i]["id"] + '></i></button>';
                }
                if(data[i]["Status"] == "ACTIVA"){
                    strTd += '<button type="button" data-toggle="tooltip" title="CERRAR ORDEN DE OPERACION" class="btn btn-primary btn-flat" id="btn_CerrarOrden"><i class="fa fa-check" id =' + data[i]["id"] + '></i></button>';
                }
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableOrdenDistribucion", strTd);
        });
    }

    LoadFunctions.list_Panaderias = function(){
        Ajax("list_Panaderias", LoadVars, function(data){
            array_Panaderia = [];
            var strTd = "";
            for(var i = 0; i < data.length; i++){
                strTd += '<tr>';
                strTd += '<td>';
                if(data[i]["chek_planificada"] == 0){                    
                    strTd += '<div class="[ form-group ]"><input type="checkbox" name="sw_' + data[i]["id_cliente"] + '" id="sw_' + data[i]["id_cliente"] + '" autocomplete="off" class="sw_"/>';
                    strTd += '<div class="[ btn-group ]"><label for="sw_' + data[i]["id_cliente"] + '" class="[ btn btn-primary ]"><span class="[ glyphicon glyphicon-ok ]"></span><span></span></label></div></div>';
                }else{
                    strTd += '<div class="[ form-group ]"><input type="checkbox" name="sw_' + data[i]["id_cliente"] + '" id="sw_' + data[i]["id_cliente"] + '" autocomplete="off" class="sw_" checked/>';
                    strTd += '<div class="[ btn-group ]"><label for="sw_' + data[i]["id_cliente"] + '" class="[ btn btn-primary ]"><span class="[ glyphicon glyphicon-ok ]"></span><span></span></label></div></div>';
                }
                strTd += '</td>';
                strTd += CreateTd(data[i]["NombrePanaderia"], "center");
                strTd += CreateTd(data[i]["cant_Autorizada"], "center");
                strTd += CreateTd(data[i]["UltimoDespacho"], "center");
                var status = data[i]["Status"] == 0 ? "ACTIVO" : "SUSPENDIDO";
                strTd += '<td style="text-align: center;">' + status + '</td>';                
                strTd += '<td style="text-align: center;">';
                if(data[i]["chek_planificada"] !== 0){                    
                    strTd += '<input class="form-control input-sm OnlyNum" type="text" value ="' + data[i]["cant_Planificada"] + '"placeholder="" id="txt_' + data[i]["id_cliente"] + '" >';                    
                    array_Panaderia[data[i]["id_cliente"]] = {
                        id_OrdenOperacion: LoadVars.id_OrdenOperaciones,
                        id_Cliente: data[i]["id_cliente"],
                        cant_Planificada: data[i]["cant_Planificada"],
                        id_Distribuidora: LoadVars.id_Distribuidora
                    }
                }else{
                    strTd += '<input class="form-control input-sm OnlyNum" type="text" placeholder="" id="txt_' + data[i]["id_cliente"] + '" disabled>';
                }
                strTd += '</td>';
                strTd += '</tr>';           
            }            
            $("#tableOrdenDistribucionDetalle").dataTable().fnDestroy();
            $("#tableOrdenDistribucionDetalle tbody").html(strTd);
            TableOrdenPanaderia = $("#tableOrdenDistribucionDetalle").DataTable({
                "pageLength": 5,
                "destroy": true,
                "language": lenguaje_espanol
            });
        });
    }

    LoadFunctions.asig_PreOrdenOperaciones = function(){
        Ajax("asig_PreOrdenOperaciones", {array_Panaderia: array_Panaderia}, function(data){
            LoadFunctions.list_Distribuidoras("cmb-distribuidora");
            LoadFunctions.list_OrdenOperaciones();
            $("#tableOrdenDistribucionDetalle").dataTable().fnDestroy();
            $("#tableOrdenDistribucionDetalle tbody").html("");
        }, true);
    }

    LoadFunctions.asig_CancelOrdenOperaciones = function(){
        Ajax("asig_CancelOrdenOperaciones", LoadVars, function(data){
            LoadFunctions.list_OrdenOperaciones();
            $('#M-Insert-1').modal('hide');
        }, true);
    }

    LoadFunctions.asing_ProcesarOrdenOperaciones = function(){
        Ajax("asing_ProcesarOrdenOperaciones", LoadVars, function(data){
            LoadFunctions.list_OrdenOperaciones();
            $('#M-Insert').modal('hide');
        }, true);   
    }

    LoadFunctions.asing_ActivarOrdenOperaciones = function(){
        Ajax("asing_ActivarOrdenOperaciones", LoadVars, function(data){
            LoadFunctions.list_OrdenOperaciones();
            $('#M-Insert-4').modal('hide');
        }, true);   
    }

    LoadFunctions.asing_CerrarOrdenOperaciones = function(){
        Ajax("asing_CerrarOrdenOperaciones", LoadVars, function(data){
            LoadFunctions.list_OrdenOperaciones();
            $('#M-Insert-5').modal('hide');
        }, true);   
    }

    LoadFunctions.cant_OP = function(){
        Ajax("cant_OP", LoadVars, function(data){
            LoadVars.cant_OP = data;
            $('#txt-cant_OP').val(data);
        });  
    }

    LoadFunctions.cant_maxOP = function(){
        Ajax("cant_maxOP", LoadVars, function(data){
            $('#txt-cant_MaxOP').val(data);
        });  
    }













})(window);