$(document).ready(function () {

    $('.attendence_form .submit').click(function () {
        $(".attendence_form").ajaxSubmit({
            type: 'post',
            data: {location_id: $('#location_id').val()},
            target: "#resultUpdate",
            success: function () {
                if ($('#resultUpdate .alert-success').length) {
                    $(".attendence_form").trigger('reset');
                }
            }
        });
    });
    $('.carousel').carousel({
        interval: 2000
    });
});