;(function(win){

    LoadFunctions.list_RecepcionDistribuidora = function(){
        Ajax("list_RecepcionDistribuidora", LoadVars, function(data){
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
                strTd += CreateTd(data[i]["NombreAlmacen"], "center");
                strTd += CreateTd(data[i]["cant_PorRecepcionar"], "center");
                strTd += CreateTd(data[i]["cant_Recepcionada"], "center");
                strTd += CreateTd(data[i]["Status"], "center");
                strTd += '<td style="text-align: center;">';
                if(data[i]["cant_PorRecepcionar"] !== "0.00"){
                    strTd += '<button type="button" data-toggle="tooltip" title="CONFIRMAR LA RECEPCION" class="btn btn-primary btn-flat" id="btn_RecepcionMercancia"><i class="fa fa-check" id =' + data[i]["id_DistribuidoraAsignacion"] + '></i></button>';
                }
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableOrdenDistribucion", strTd);
        });
    }

    LoadFunctions.asig_RecepcionDistribuidora = function(){
        Ajax("asig_RecepcionDistribuidora", LoadVars, function(data){
            LoadFunctions.list_RecepcionDistribuidora();
            $("#txt-cant_Recepcionada").val("")
            $('#M-Insert').modal('hide');
        }, true);
    }
})(window);