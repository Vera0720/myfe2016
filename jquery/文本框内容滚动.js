$(function(){
    var $comment = $('#comment');//��ȡ���ۿ�
    $('.up').click(function(){ //���ϰ�ť�󶨵����¼�
        if(!$comment.is(":animated")){//�ж��Ƿ��ڶ���
            $comment.animate({ scrollTop  : "-=50" } , 400);
        }
    });
    $('.down').click(function(){//���°�ť�󶨵����¼�
        if(!$comment.is(":animated")){
            $comment.animate({ scrollTop  : "+=50" } , 400);
        }
    });
});
