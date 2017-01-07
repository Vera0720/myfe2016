/**
 * Created by Administrator on 2017/1/6.
 */
$(function(){
    $(":input").focus(function(){//$("input, textarea")
        $(this).addClass("focus");
    }).blur(function(){
        $(this).removeClass("focus");
    });
})
