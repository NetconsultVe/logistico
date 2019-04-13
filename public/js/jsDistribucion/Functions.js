;(function(win){
    LoadFunctions.list_Distribuciones = function(){
        Ajax("list_Distribuciones", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){
                switch (Number(data[i]["Status"])) {
                    case 0:
                        data[i]["Status"] = "EN TRANSITO";
                        break;
                    case 1:
                        data[i]["Status"] = "ENTREGA PARCIAL";
                        break;
                    case 2:
                        data[i]["Status"] = "ENTREGA TOTAL";
                        break;
                }             
                strTd += '<tr>';
                strTd += CreateTd(data[i]["FechaAsignacion"], "center");
                strTd += CreateTd(data[i]["Distribuidora"], "center");
                strTd += CreateTd(data[i]["NombreAlmacen"], "center");
                strTd += CreateTd(data[i]["cant_Asignada"], "center");
                strTd += CreateTd("0.00", "center");
                strTd += CreateTd(data[i]["Status"], "center");
                strTd += '</tr>';            
            }
            DefineDataTable("tableOrdenDistribucion", strTd);
        });
    }

    LoadFunctions.disp_SiloAlmacen = function(){
        Ajax("disp_SiloAlmacen", LoadVars, function(data){
            $("#txt-cant_Disponible").val(data[0]["cant_Disponible"]);
        });
    }

    LoadFunctions.asig_SiloDistribuidora = function(){
        Ajax("asig_SiloDistribuidora", LoadVars, function(data){
            LoadFunctions.CheckTecho(LoadVars.cant_Asignada, data)
        });
    }

    LoadFunctions.CheckTecho = function(techo, data, a){
        LoadVars.i = a == undefined ? 0 : a
        LoadVars.data_CheckTecho = data;
        LoadVars.residuo = Number(techo) - Number(LoadVars.data_CheckTecho[LoadVars.i]["exist_Manufacturada"]);        
        var a = {
            techo: Number(techo),
            id_ProductoPresentacion: 2,
            id_AlmacenDistribuidora: LoadVars.id_AlmacenDistribuidora,
            id_DistribuidoraAsignacion: LoadVars.data_CheckTecho[LoadVars.i]["id_DistribuidoraAsignacion"],
            id_SiloAlmacenesIncorporacion: LoadVars.data_CheckTecho[LoadVars.i]["id_SiloAlmacenesIncorporacion"],
            PrecioDistribuidora: LoadVars.PrecioDistribuidora,
            PrecioPanaderia: LoadVars.PrecioPanaderia            
        }        
        if(LoadVars.residuo <= 0){
            a.cant_NewExistencia = Math.abs(LoadVars.residuo);
            a.cant_PreAsignada = a.techo;
            a.cant_Asignada = Number(LoadVars.data_CheckTecho[LoadVars.i]["exist_Manufacturada"] - Math.abs(LoadVars.residuo)) + Number(LoadVars.data_CheckTecho[LoadVars.i]["cant_Comprometida"]);         
            Ajax("asig_DistribuidoraDetalle", a, function(data){
                InitControl();
                $("#tableOrdenDistribucion tbody").empty();
                LoadFunctions.list_Silo("cmb-silo");
                LoadFunctions.list_Distribuidoras("cmb-distribuidora");
            }, true);
        }else{
            a.cant_NewExistencia = 0;
            a.cant_PreAsignada = Number(LoadVars.data_CheckTecho[LoadVars.i]["exist_Manufacturada"]);          
            a.cant_Asignada = Number(LoadVars.data_CheckTecho[LoadVars.i]["exist_Manufacturada"]) + Number(LoadVars.data_CheckTecho[LoadVars.i]["cant_Comprometida"]);
            Ajax("asig_DistribuidoraDetalle", a, function(data){
                LoadVars.i += 1;
                LoadFunctions.CheckTecho(LoadVars.residuo, LoadVars.data_CheckTecho, LoadVars.i);
            });
        }
    }
})(window);