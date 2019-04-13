N(".preload").nodeRemove(function(){
	N(".wrapper").show(function(){
		LoadFunctions.list_Silo("cmb-silo");
		LoadFunctions.list_Productos("cmb-producto", 1);
	}, 200)
}, 200);