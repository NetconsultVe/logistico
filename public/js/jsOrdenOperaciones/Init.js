;(function(win){
	N(".preload").nodeRemove(function(){
		N(".wrapper").show(function(){
			win.array_Panaderia = [];
			LoadFunctions.list_OrdenOperacionesResponsable("cmb-responsable");
			LoadFunctions.list_OrdenOperaciones();
		}, 200)
	}, 200);
})(window);