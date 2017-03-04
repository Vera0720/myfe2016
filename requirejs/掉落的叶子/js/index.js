require(['./leaf'],function(Leaf){
    var oContainer = document.getElementById("container");
    var winWidth = document.documentElement.clientWidth;
    for(var i=0;i<4;i++){
        var iWidth = 50+parseInt(50+Math.random()*51);
        var leaf = new Leaf({
            width:iWidth,
            left:parseInt(Math.random() * (winWidth-iWidth)),
            container:oContainer
        })
        leaf.fall();
    }
})
