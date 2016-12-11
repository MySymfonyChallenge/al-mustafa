$(document).ready(function () {
    $('.attendence_form .submit').click(function () {
       /*
        var options = {
            target: '#resultUpdate',
            url: '/attendence_submit',
            type: 'post',
            data: { location_id : $('#location_id').val() },
            success: function () {
                alert('Thanks for your comment!');
            }
        };
        $('.attendence_form').ajaxForm(options);
        */
        $(".attendence_form").ajaxSubmit({
            type: 'post',
            data: { location_id: $('#location_id').val() }, 
            target: "#resultUpdate",
            success: function(){
                    if($('#resultUpdate .alert-success').length){
                            $(".attendence_form").trigger('reset');

                    }
            }
        });
    });
});