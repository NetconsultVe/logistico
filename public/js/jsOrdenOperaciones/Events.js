;(function(win){

    $("#txt_OrdenFechaInicio").change(function(){
        $("#txt_OrdenFechaFin").val("");
        $("#txt_OrdenFechaFin").datepicker("destroy");
        var arr_Fecha = $("#txt_OrdenFechaInicio").val().split("/")
        var d = new Date(arr_Fecha[1] + "/" + arr_Fecha[0] + "/" + arr_Fecha[2]);
		$('#txt_OrdenFechaFin').datepicker({
			language: 'es', 
			startDate: d
		});
    })

    $("#cmb-distribuidora").change(function(){
        LoadFunctions.list_Panaderias();
    });

    $("#cmb-almacen_distribuidora").change(function(){
        LoadFunctions.cant_maxOP();
    });

    $("#cmb-distribuidora1").change(function(){
        LoadFunctions.list_DistribuidorasAlmacenes("cmb-almacen_distribuidora");
    });

    $("#btnOrdenDistribucionAdd").click(function(){
        var sw = ControlCheck([
            "#txt_OrdenFechaInicio",
            "#txt_OrdenFechaFin",
            "#cmb-responsable"
        ]);
        if(sw){return}
        LoadFunctions.asig_OrdenOperaciones();
    })

    $('#tableOrdenDistribucionDetalle').on('draw.dt', function (e, b){
        N(".OnlyNum").OnlyNum();
    });

    $("#btnDeleteYes").click(function(){
        LoadFunctions.asig_CancelOrdenOperaciones()
    });

    $("#tableOrdenDistribucion").on("click", "#btn_PlanificarOrden", function(){
        var fila = $(this).closest('tr').index();
        LoadFunctions.list_Distribuidoras("cmb-distribuidora");
        LoadVars.id_OrdenOperaciones = $(this)[0].firstChild.id;
        $('#ModalWidth').css("width","85%");
        $('#M-Insert-2').modal('show');
    });

    $("#tableOrdenDistribucion").on("click", "#btn_CancelarPlanificarOrden", function(){
        LoadVars.id_OrdenOperaciones = $(this)[0].firstChild.id;
        $('#M-Insert-1').modal('show');
    });

    $("#tableOrdenDistribucion").on("click", "#btn_ProcesarOrden", function(){
        LoadVars.id_OrdenOperaciones = $(this)[0].firstChild.id;
        LoadFunctions.list_Distribuidoras("cmb-distribuidora1");
        LoadFunctions.cant_OP();
        $('#M-Insert').modal('show');
    });

    $("#tableOrdenDistribucion").on("click", "#btn_ActivarOrden", function(){
        LoadVars.id_OrdenOperaciones = $(this)[0].firstChild.id;
        $('#M-Insert-4').modal('show');
    });

    $("#tableOrdenDistribucion").on("click", "#btn_CerrarOrden", function(){
        LoadVars.id_OrdenOperaciones = $(this)[0].firstChild.id;
        $('#M-Insert-5').modal('show');
    });

    $('#tableOrdenDistribucionDetalle tbody').on( 'click', '.sw_', function (){
        var fila = $(this).closest('tr').index();
        LoadVars.id_Panaderia = parseInt(this.id.replace("sw_", ""), 10);
        var fila = $(this).closest('tr').index();
        var InputSelect = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(5)[0].childNodes[0];
        var txtAsignacion = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(2).text();
        if ($(this).prop('checked')) {
            $(InputSelect).prop('disabled', false);
            $(InputSelect).val(txtAsignacion);
        }else{
            $(InputSelect).prop('disabled', true);
            $(InputSelect).val("");
        }
        array_Panaderia[LoadVars.id_Panaderia] = {
            id_OrdenOperacion: LoadVars.id_OrdenOperaciones,
            id_Cliente: LoadVars.id_Panaderia,
            cant_Planificada: Number($(InputSelect).val()),
            id_Distribuidora: LoadVars.id_Distribuidora
        }
        var a = 0;
        array_Panaderia.forEach(function(element){
            a += Number(element.cant_Planificada);
        });
        $("#panaderiaCantidad p")[0].innerText = "CANTIDAD PLANIFICADA: " + a + " SACOS";

    } );

    $("#tableOrdenDistribucionDetalle").on("keyup", ".OnlyNum", function(){
        var fila = $(this).closest('tr').index();
        LoadVars.id_Panaderia = parseInt(this.id.replace("txt_", ""), 10);
        var InputSelect = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(5)[0].childNodes[0];
        var Asignacion = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(2).text();
        if(Number($(InputSelect).val()) > Number(Asignacion)){
            Notify("LA CANTIDAD PLANIFICADA NO PUEDE SER MAYOR QUE LA ASIGNADA", "danger");
            $($(this)[0]).val(Asignacion);
        };
        array_Panaderia[LoadVars.id_Panaderia] = {
            id_OrdenOperacion: LoadVars.id_OrdenOperaciones,
            id_Cliente: LoadVars.id_Panaderia,
            cant_Planificada: Number($(InputSelect).val()),
            id_Distribuidora: LoadVars.id_Distribuidora
        }
        var a = 0;
        array_Panaderia.forEach(function(element){
            a += Number(element.cant_Planificada);
        });
        $("#panaderiaCantidad p")[0].innerText = "CANTIDAD PLANIFICADA: " + a + " SACOS";
    });


    $("#M-Insert-2").on("hidden.bs.modal", function(){
        var arrayAux = [];
        if(LoadVars.id_Distribuidora !== undefined && array_Panaderia.length !== 0){                
            array_Panaderia.forEach(function(element){  
                console.log(element.cant_Planificada)                  
                if(element.cant_Planificada !== "" && element.cant_Planificada !== 0 ){
                    arrayAux.push(element);
                }            
            });
            console.log(arrayAux)
            array_Panaderia = arrayAux;
            LoadFunctions.asig_PreOrdenOperaciones();
        }
    });

    $("#btnActiveYes").click(function(){
        var sw = ControlCheck([
            "#cmb-distribuidora1",
            "#cmb-almacen_distribuidora",
            "#txt-cant_OP",
            "#txt-cant_MaxOP"
        ]);
        if(sw){return}
        if(Number($("#txt-cant_OP").val()) > Number($("#txt-cant_MaxOP").val())){
            Notify("LA CANTIDAD PLANIFICADA NO PUEDE SER MAYOR QUE EL DISPONIBLE EN EL ALMACEN", "danger")
        }else{
            LoadFunctions.asing_ProcesarOrdenOperaciones();
        }
    })

    $("#btnActivarYes").click(function(){
        LoadFunctions.asing_ActivarOrdenOperaciones();
    })

    $("#btnCerrarYes").click(function(){
        LoadFunctions.asing_CerrarOrdenOperaciones();
    })

})(window);
