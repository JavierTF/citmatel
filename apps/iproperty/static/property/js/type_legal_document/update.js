'use strict';
     
const UpdateTypeLegalDocument = function () {
    const form = $("#form_update_typelegaldocument");

    const initInputs= function () {};

    const initEvent = function () {

        $('#id_name').on('change', function () {
            if ($('#id_name').val() != '') {
                hiden_error_message($('#id_name'));

                if($('#id_name').val().match(/^[A-Za-z ]+$/)) {
                    hiden_error_message($('#id_name'));
                } else {
                    show_error_message($('#id_name'), 'Este campo solo admite letras');
                }
            } else {
                show_error_message($('#id_name'), 'Este campo es requerido');
            }
        });

    };

    const submitForm = function () {

        $('#form_submit').click(function () {

            if($('#id_name').val() == ''){
                show_error_message($('#id_name'), 'Este campo es requerido');
                return;
            }

            if(!$('#id_name').val().match(/^[A-Za-z ]+$/)) {
                show_error_message($('#id_name'), 'Este campo solo admite letras');
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
                        title: 'El Tipo de documento legal se ha modificado satisfactoriamente!',
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
    UpdateTypeLegalDocument.init();
});