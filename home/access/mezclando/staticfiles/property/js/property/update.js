'use strict';
     
const UpdateProperty = function () {
    const form = $("#form_update_property");

    const initInputs= function () {

        $('input[name="application_date"]').daterangepicker({
            singleDatePicker: true,
            maxDate: moment(),
            locale: {
                format: 'Y-M-DD',
                separator: ' - ',
                applyLabel: 'Aplicar',
                cancelLabel: 'Cancelar',
                weekLabel: 'W',
                customRangeLabel: 'Personalizado',
                daysOfWeek: moment.weekdaysMin(),
                monthNames: moment.monthsShort()
            },
            ranges: {
               'Hoy': [moment()],
               'Hace una semana': [moment().subtract(1, 'week')],
               'Hace un mes': [moment().subtract(1, 'month')]
            }
        });
        $('input[name="grant_date"]').daterangepicker({
            singleDatePicker: true,
            maxDate: moment(),
            locale: {
                format: 'Y-M-DD',
                separator: ' - ',
                applyLabel: 'Aplicar',
                cancelLabel: 'Cancelar',
                weekLabel: 'W',
                customRangeLabel: 'Personalizado',
                daysOfWeek: moment.weekdaysMin(),
                monthNames: moment.monthsShort()
            },
            ranges: {
               'Hoy': [moment()],
               'Hace una semana': [moment().subtract(1, 'week')],
               'Hace un mes': [moment().subtract(1, 'month')]
            }
        });
        $('input[name="expiration_date"]').daterangepicker({
            singleDatePicker: true,
            locale: {
                format: 'Y-M-DD',
                separator: ' - ',
                applyLabel: 'Aplicar',
                cancelLabel: 'Cancelar',
                weekLabel: 'W',
                customRangeLabel: 'Personalizado',
                daysOfWeek: moment.weekdaysMin(),
                monthNames: moment.monthsShort()
            },
            ranges: {
               'Hoy': [moment()],
               'Dentro de un año': [moment().add(1, 'year')],
               'Dentro de dos años': [moment().add(2, 'year')],
               'Permanente': [moment().add(100, 'year')]
            }
        });

        $('#id_products').select2({
            closeOnSelect: false,
        });
        $('#id_patents').select2({
            closeOnSelect: false,
        });
        $('#id_figurative_elements').select2({
            closeOnSelect: false,
        });
        $('#id_drawings').select2({
            closeOnSelect: false,
        });

        if ($('#id_modality').val() != '') {
                $('#id_products').prop('disabled', false);
                $('#id_patents').prop('disabled', false);
                $('#id_figurative_elements').prop('disabled', false);
                $('#id_drawings').prop('disabled', false);

                if ($('#id_modality').val() == 1) {
                    $('#id_patents').prop('disabled', true);
                    $('#id_drawings').prop('disabled', true);
                }
                else if ($('#id_modality').val() == 5 || $('#id_modality').val() == 6) {
                    $('#id_products').prop('disabled', true);
                    $('#id_figurative_elements').prop('disabled', true);
                    $('#id_drawings').prop('disabled', true);
                }
                else if ($('#id_modality').val() == 7) {
                    $('#id_products').prop('disabled', true);
                    $('#id_figurative_elements').prop('disabled', true);
                    $('#id_patents').prop('disabled', true);
                }
            }
    };

    const initEvent = function () {

        $('#id_name').on('change', function () {
            if ($('#id_name').val() != '') {
                hiden_error_message($('#id_name'));
            } else {
                show_error_message($('#id_name'), 'Este campo es requerido');
            }
        });

        $('#id_modality').on('change', function () {
            if ($('#id_modality').val() != '') {
                hiden_error_message($('#id_modality'));
                $('#id_products').prop('disabled', false);
                $('#id_patents').prop('disabled', false);
                $('#id_figurative_elements').prop('disabled', false);
                $('#id_drawings').prop('disabled', false);

                if ($('#id_modality').val() == 1) {
                    $('#id_patents').prop('disabled', true);
                    $('#id_drawings').prop('disabled', true);
                }
                else if ($('#id_modality').val() == 5 || $('#id_modality').val() == 6) {
                    $('#id_products').prop('disabled', true);
                    $('#id_figurative_elements').prop('disabled', true);
                    $('#id_drawings').prop('disabled', true);
                }
                else if ($('#id_modality').val() == 7) {
                    $('#id_products').prop('disabled', true);
                    $('#id_figurative_elements').prop('disabled', true);
                    $('#id_patents').prop('disabled', true);
                }
            } else {
                show_error_message($('#id_modality'), 'Este campo es requerido');
            }
        });

        $('#id_application_date').on('change', function () {
            console.log($('#id_application_date').val());
            console.log($('#id_grant_date').val());
            if ($('#id_application_date').val() != '') {
                hiden_error_message($('#id_application_date'));

                var app_date = moment($('#id_application_date').val());
                var gra_date = moment($('#id_grant_date').val());

                if (app_date >= gra_date) {
                    show_error_message($('#id_grant_date'), 'Asegurese que la fecha de otorgamiento sea mayor a la fecha de solicitud');
                }else{
                    hiden_error_message($('#id_grant_date'));
                }
            } else {
                show_error_message($('#id_application_date'), 'Este campo es requerido');
            }
        });

        $('#id_application_number').on('change', function () {
            if ($('#id_application_number').val() != '') {
                 if(!$('#id_application_number').val().match(/^[0-9]+$/)) {
                    show_error_message($('#id_application_number'), 'Este campo solo admite dígitos');
                } else {
                    hiden_error_message($('#id_application_number'));
                }
            } else {
                show_error_message($('#id_application_number'), 'Este campo es requerido');
            }
        });

        $('#id_certificate_number').on('change', function () {
            if ($('#id_certificate_number').val() != '') {
                 if(!$('#id_certificate_number').val().match(/^[0-9]+$/)) {
                    show_error_message($('#id_certificate_number'), 'Este campo solo admite dígitos');
                } else {
                    hiden_error_message($('#id_certificate_number'));
                }
            } else {
                show_error_message($('#id_certificate_number'), 'Este campo es requerido');
            }
        });

        $('#id_grant_date').on('change', function () {
            if ($('#id_grant_date').val() != '') {
                hiden_error_message($('#id_grant_date'));

                var app_date = moment($('#id_application_date').val());
                var gra_date = moment($('#id_grant_date').val());
                var exp_date = moment($('#id_expiration_date').val());

                if (app_date >= gra_date) {
                    show_error_message($('#id_grant_date'), 'Asegurese que la fecha de otorgamiento sea mayor a la fecha de solicitud');
                }else{
                    hiden_error_message($('#id_grant_date'));
                }

                if (gra_date >= exp_date) {
                    show_error_message($('#id_expiration_date'), 'Asegurese que la fecha de vencimiento sea mayor a la fecha de otorgamiento');
                }else{
                    hiden_error_message($('#id_expiration_date'));
                }
            }
        });

        $('#id_expiration_date').on('change', function () {
            if ($('#id_expiration_date').val() != '') {
                hiden_error_message($('#id_expiration_date'));

                var app_date = moment($('#id_application_date').val());
                var gra_date = moment($('#id_grant_date').val());
                var exp_date = moment($('#id_expiration_date').val());

                if (app_date >= gra_date) {
                    show_error_message($('#id_grant_date'), 'Asegurese que la fecha de otorgamiento sea mayor a la fecha de solicitud');
                }else{
                    hiden_error_message($('#id_grant_date'));
                }

                if (gra_date >= exp_date) {
                    show_error_message($('#id_expiration_date'), 'Asegurese que la fecha vencimiento sea mayor a la fecha de otorgamiento');
                }else{
                    hiden_error_message($('#id_expiration_date'));
                }

            }
        });

        $('#id_granted_resolution').on('change', function () {
            if(!$('#id_granted_resolution').val().match(/^[0-9]+$/)) {
                show_error_message($('#id_granted_resolution'), 'Este campo solo admite dígitos');
            } else {
                hiden_error_message($('#id_granted_resolution'));
            }
        });

    };

    const submitForm = function () {

        $('#form_submit').click(function () {

            if($('#id_name').val() == ''){
                show_error_message($('#id_name'), 'Este campo es requerido');
                return;
            }

            if($('#id_modality').val() == ''){
                show_error_message($('#id_modality'), 'Este campo es requerido');
                return;
            }

            if($('#id_country').val() == ''){
                show_error_message($('#id_country'), 'Este campo es requerido');
                return;
            }

            if($('#id_application_date').val() == ''){
                show_error_message($('#id_grant_date'), 'Este campo es requerido');
                return;
            }

            if($('#id_application_number').val() == ''){
                show_error_message($('#id_application_number'), 'Este campo es requerido');
                return;
            }

            if(!$('#id_application_number').val().match(/^[0-9]+$/)) {
                show_error_message($('#id_application_number'), 'Este campo solo admite dígitos');
                return;
            }

            if($('#id_certificate_number').val() == ''){
                show_error_message($('#id_certificate_number'), 'Este campo es requerido');
                return;
            }

            if(!$('#id_certificate_number').val().match(/^[0-9]+$/)) {
                show_error_message($('#id_certificate_number'), 'Este campo solo admite dígitos');
                return;
            }

            if($('#id_status').val() == ''){
                show_error_message($('#id_status'), 'Este campo es requerido');
                return;
            }

            if(!$('#id_granted_resolution').val().match(/^[0-9]+$/)) {
                show_error_message($('#id_granted_resolution'), 'Este campo solo admite dígitos');
                return;
            }

            var app_date = moment($('#id_application_date').val());
            var gra_date = moment($('#id_grant_date').val());
            var exp_date = moment($('#id_expiration_date').val());

            if (app_date >= gra_date) {
                show_error_message($('#id_grant_date'), 'Asegurese que la fecha de otorgamiento sea mayor a la fecha de solicitud');
                return;
            }

            if (gra_date >= exp_date) {
                show_error_message($('#id_expiration_date'), 'Asegurese que la fecha no sea menor o igual a la fecha de otorgamiento');
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
                        title: '¡La propiedad industrial se ha modificado satisfactoriamente!',
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
    UpdateProperty.init();
});