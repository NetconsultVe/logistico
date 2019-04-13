;(function(win){
    LoadFunctions.list_AsignaFecha = function(){
        LoadVars.array_Fechas = [];
        Ajax("list_AsignaFecha", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){
                LoadVars.array_Fechas[data[i]["id_OrdenOperacionesAsignacion"]] ={
                    FechaInicio: data[i]["FechaInicio"],
                    FechaFin: data[i]["FechaFin"]
                }
                strTd += '<tr>';
                strTd += CreateTd(data[i]["NombrePanaderia"], "center");
                strTd += CreateTd(data[i]["cant_SacosAsignada"], "center");
                strTd += CreateTd(data[i]["FechaDespacho"], "center");
                strTd += '<td style="text-align: center;">';
                strTd += '<button type="button" data-toggle="tooltip" title="ASIGNAR FECHA" class="btn btn-primary btn-flat" id="btn_PlanificarOrden"><i class="fa fa-pencil-square-o" id =' + data[i]["id_OrdenOperacionesAsignacion"] + '></i></button>';
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableOrdenDistribucion", strTd);
        });
    }
    LoadFunctions.asing_DespachoPanaderia = function(){
        Ajax("asing_DespachoPanaderia", LoadVars, function(data){
            $("#txt-cant_Disponible").val("");
            LoadFunctions.list_AsignaFecha();
        }, true);
    }
})(window);