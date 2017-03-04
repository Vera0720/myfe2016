
(function(){
    var oContainer = document.getElementById("container");
    var oBigBox = document.getElementById("big-box");
    var aBigImg = oBigBox.getElementsByTagName("旋转的按钮图片");
    var oSmallBox = document.getElementById("small-box");
    var aSmallImg = oSmallBox.getElementsByTagName("旋转的按钮图片");
    var oPrev = document.getElementById("prev");
    var oNext = document.getElementById("next");
    var oNowPage = document.getElementById("nowPage");
    var iNow = 0;
    var zIndex = 9;
    var timer;
    for(var i=0;i<aBigImg.length;i++){
        aBigImg[i].style.zIndex = aBigImg.length - i;
        aSmallImg[i].style.opacity = 0.4;
    }
    aSmallImg[iNow].style.opacity = 1;
    oPrev.onmouseover = oNext.onmouseover = function(){
        if(this == oPrev){
            animate(oPrev,{opacity:100})
        }
        if(this == oNext){
            animate(oNext,{opacity:100})
        }
    };
    oPrev.onmouseout = oNext.onmouseout = function(){
        if(this == oPrev){
            animate(oPrev,{opacity:0})
        }
        if(this == oNext){
            animate(oNext,{opacity:0})
        }
    };
    for(var i=0;i<aBigImg.length;i++){
        aBigImg[i].index = i;
        oNext.onclick = oPrev.onclick = function () {
            if(this == oNext){
                iNow++;
                if(iNow == aBigImg.length){
                    iNow = 0;
                }
            } else{
                iNow--;
                if(iNow == -1){
                    iNow = aBigImg.length - 1;
                }
            }
            changeImg(iNow);
        }
    }
    for(var i=0;i<aSmallImg.length;i++){
        aSmallImg[i].index = i;
        aSmallImg[i].onmouseover = function(){
            animate(this,{
                opacity: 100
            });
        };
        aSmallImg[i].onmouseout = function(){
            if(this.index !== iNow){
                animate(this,{
                    opacity: 30
                });
            }
        };
        aSmallImg[i].onclick = function(){
            if(this.index !== iNow){
                changeImg(this.index);
            }

        }
    }
    run();
    oContainer.onmouseover = function(){
        clearInterval(timer);
    };
    oContainer.onmouseout = function(){
        run();
    };
    function run(){
        timer = setInterval(function(){
            oNext.onclick();
        },1000);
    }
    function changeImg(idx){
        //animate(aBigImg[idx-1],{opacity:0});
        //aBigImg[idx].style.zIndex++;
        iNow = idx;
        aBigImg[idx].style.opacity = 0;
        aBigImg[idx].style.filter = "alpha(opacity=0)";
        aBigImg[idx].style.zIndex = zIndex++;
        animate(aBigImg[idx], {
            opacity: 100
        });
        oNowPage.innerHTML = idx + 1;
        for(var i=0;i<aSmallImg.length;i++){
            aSmallImg[i].style.opacity = 0.4;
        }
        aSmallImg[idx].style.opacity = 1;

        var iLeft = 0;
        if(idx == 0||idx == 1){
            iLeft = 0;
        }else if(idx == aSmallImg.length - 1 || idx == aSmallImg.length - 2){
            iLeft = aSmallImg.length / 2;
        }else{
            iLeft = idx - 1;
        }
        animate(oSmallBox,{
            left : -iLeft * aSmallImg[0].offsetWidth
            })
    }
})();