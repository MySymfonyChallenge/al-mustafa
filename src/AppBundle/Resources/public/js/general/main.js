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

    $('.application_form .submit').click(function () {
        $(".application_form").ajaxSubmit({
            type: 'post',
            target: "#resultUpdate",
            success: function () {
                if ($('#resultUpdate .alert-success').length) {
                    $(".application_form").trigger('reset');

                }
            }
        });
    });
});