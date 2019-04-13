;(function(win){  
    LoadFunctions.list_Notificacion = function(){
        Ajax("list_Notificacion", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){
                strTd += '<tr>';
                strTd += CreateTd(data[i]["NombrePanaderia"], "center");
                strTd += CreateTd(data[i]["PersonaContacto"], "center");
                strTd += CreateTd(data[i]["TelePersonaContacto"], "center");
                strTd += CreateTd(data[i]["cant_SacosAsignada"], "center");
                strTd += CreateTd(data[i]["CostoDespacho"], "center");
                strTd += CreateTd(data[i]["FechaDespacho"], "center");
                strTd += '<td style="text-align: center;">';
                if(data[i]["NotificadoPhone"] == 0 ){
                    strTd += '<button type="button" data-toggle="tooltip" title="NOTIFICADO" class="btn btn-primary btn-flat" id="btn_Notificado"><i class="fa fa-check" id =' + data[i]["id_OrdenOperacionesAsignacion"] + '></i></button>';
                }
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableOrdenDistribucion", strTd);
        });
    }

    LoadFunctions.noti_CelDespachoPanaderia = function(){
        Ajax("noti_CelDespachoPanaderia", LoadVars, function(data){
            LoadFunctions.list_Notificacion();
        }, true);
    }

})(window);