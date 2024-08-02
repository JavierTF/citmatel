'use strict';
     
const UpdateCountries = function () {
    const form = $("#form_update_estado");

    const initInputs= function () {};

    const initEvent = function () {

        $('#id_nombre').on('change', function () {
            if ($('#id_nombre').val() != '') {
                hiden_error_message($('#id_nombre'));
            } else {
                show_error_message($('#id_nombre'), 'Este campo es requerido');
            }
        });


    };

    const submitForm = function () {

        $('#form_submit').click(function () {

            if($('#id_nombre').val() == ''){
                show_error_message($('#id_nombre'), 'Este campo es requerido');
                return;
            }


            var formData = new FormData(form[0]);

            $.ajax({
                type: "POST",
                url: form.attr('action'),
                data: formData,
                contentType: false,
                processData: false,
                success: function (data) {
                    Swal.fire({
                        title: '¡El contacto se ha modificado satisfactoriamente!',
                        type: 'success',
                        timer: 2000,
                        showConfirmButton: false
                    }).then((result) => {
                        $(location).attr('href', data.results.url);
                    });
                }
            });
        });

    };

    const show_error_message = function (element, message) {
        var x = element.closest('.input-content')[0].querySelector('small');
        x.innerHTML = message;
    };

    const hiden_error_message = function (element) {
        var x = element.closest('.input-content')[0].querySelector('small');
        x.innerHTML = '';
    };

    return {
        init: function () {
            initInputs();
            initEvent();
            submitForm();
        }
    };
}();

$(document).ready(function() {
    UpdateCountries.init();
});