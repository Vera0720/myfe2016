/**
 * Created by Administrator on 2017/1/6.
 */	$(function(){
    var $comment = $('#comment');  //��ȡ���ۿ�
    $('.bigger').click(function(){ //�Ŵ�ť�󶨵����¼�
        $comment.height($comment.height()<500?$comment.height()+50:$comment.height());
    });
    $('.smaller').click(function(){//��С��ť�󶨵����¼�
        $comment.height($comment.height()>50?$comment.height()-50:$comment.height());
    });
});
