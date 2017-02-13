define(["b"],function(isArray){
    function arrSort(arr){h
        if(isArray(arr)){
            return arr.sort(function(a,b){
                return a - b;
            });
        }else{
            return "传入的不是个数组";
        }
    }
    return arrSort;
});