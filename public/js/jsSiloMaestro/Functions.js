;(function(win){
    LoadFunctions.new_Silo = function(){
        Ajax("new_Silo", LoadVars, function(data){
            console.log(data);
        }, true);
    }
})(window);