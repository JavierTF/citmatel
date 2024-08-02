'use strict';
     
const CreateEmployee = function () {
    const form = $("#form_create_employee");
    let identification_exists = false;

    const initInputs= function () {

        if($('#id_is_reserve')[0].checked) {
            $('#id_init_date_reserve').attr('disabled', false);
            $('#id_finish_date_reserve').attr('disabled', false);
            $('#id_image_reserve').attr('disabled', false);
            $('#id_spreadsheet_reserve').attr('disabled', false);
            $('#id_is_executive').attr('disabled', false);
        } else {
            $('#id_init_date_reserve').attr('disabled', true);
            $('#id_finish_date_reserve').attr('disabled', true);
            $('#id_image_reserve').attr('disabled', true);
            $('#id_spreadsheet_reserve').attr('disabled', true);
            $('#id_is_executive').attr('disabled', true);
        }

        if($('#id_is_executive')[0].checked) {
            $('#id_init_date_executive').attr('disabled', false);
            $('#id_finish_date_executive').attr('disabled', false);
            $('#id_image_executive').attr('disabled', false);
            $('#id_spreadsheet_executive').attr('disabled', false);
        } else {
            $('#id_init_date_executive').attr('disabled', true);
            $('#id_finish_date_executive').attr('disabled', true);
            $('#id_image_executive').attr('disabled', true);
            $('#id_spreadsheet_executive').attr('disabled', true);
        }

        $('input[name="init_date_reserve"]').daterangepicker({
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
        $('input[name="finish_date_reserve"]').daterangepicker({
            singleDatePicker: true,
            startDate: moment().add(1, 'month'),
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
               'Dentro de dos años': [moment().add(2, 'year')]
            }
        });

        $('input[name="init_date_executive"]').daterangepicker({
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
        $('input[name="finish_date_executive"]').daterangepicker({
            singleDatePicker: true,
            startDate: moment().add(1, 'month'),
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
               'Dentro de dos años': [moment().add(2, 'year')]
            }
        });
    };

    const initEvent = function () {

        $('#id_first_name').on('change', function () {
            if ($('#id_first_name').val() != '') {
                hiden_error_message($('#id_first_name'));

                if($('#id_first_name').val().match(/^[a-zA-Z áÁéÉíÍóÓúÚñÑ.]+$/)) {
                    hiden_error_message($('#id_first_name'));
                } else {
                    show_error_message($('#id_first_name'), 'Este campo solo admite letras');
                }
            } else {
                show_error_message($('#id_first_name'), 'Este campo es requerido');
            }
        });

        $('#id_last_name').on('change', function () {
            if ($('#id_last_name').val() != '') {
                hiden_error_message($('#id_last_name'));

                if($('#id_last_name').val().match(/^[a-zA-Z áÁéÉíÍóÓúÚñÑ.]+$/)) {
                    hiden_error_message($('#id_last_name'));
                } else {
                    show_error_message($('#id_last_name'), 'Este campo solo admite letras');
                }
            } else {
                show_error_message($('#id_last_name'), 'Este campo es requerido');
            }
        });

        $('#id_identification').on('change', function () {
            if ($('#id_identification').val() != '') {
                if(!$('#id_identification').val().match(/^\d{2}([0]?[1-9]|[1]?[0-2])([0]?[1-9]|[1-2]?[0-9]|[3]?[0-1])\d{5}$/)){
                    show_error_message($('#id_identification'), 'Formato de carnet de identidad incorrecto');
                } else {
                    if($('#id_identification').val().length !== 11) {
                        show_error_message($('#id_identification'), 'Este campo debe contener 11 caractéres');
                    } else {
                        hiden_error_message($('#id_identification'));
                        $.ajax({
                            type: "GET",
                            url: validate_url,
                            data: {'id': null, 'identification': $('#id_identification').val()},
                            success: function (data) {
                                identification_exists = data.exists;
                                if(data.exists){
                                    show_error_message($('#id_identification'), 'Ya existe Trabajador con este Carnet de indentidad');
                                }
                            }
                        });
                    }
                }
            } else {
                show_error_message($('#id_identification'), 'Este campo es requerido');
            }
        });

        $('#id_position').on('change', function () {
            if ($('#id_position').val() != '') {
                hiden_error_message($('#id_position'));
            } else {
                show_error_message($('#id_position'), 'Este campo es requerido');
            }
        });

        $('#id_is_reserve').on('click', function () {
            if($('#id_is_reserve')[0].checked) {
                $('#id_init_date_reserve').attr('disabled', false);
                $('#id_finish_date_reserve').attr('disabled', false);
                $('#id_image_reserve').attr('disabled', false);
                $('#id_spreadsheet_reserve').attr('disabled', false);
                $('#id_is_executive').attr('disabled', false);
            } else {
                $('#id_init_date_reserve').attr('disabled', true);
                $('#id_finish_date_reserve').attr('disabled', true);
                $('#id_image_reserve').attr('disabled', true);
                $('#id_spreadsheet_reserve').attr('disabled', true);
                $('#id_is_executive').attr('disabled', true);
            }
        });

        $('#id_is_executive').on('click', function () {
            if($('#id_is_executive')[0].checked) {
                $('#id_init_date_executive').attr('disabled', false);
                $('#id_finish_date_executive').attr('disabled', false);
                $('#id_image_executive').attr('disabled', false);
                $('#id_spreadsheet_executive').attr('disabled', false);
            } else {
                $('#id_init_date_executive').attr('disabled', true);
                $('#id_finish_date_executive').attr('disabled', true);
                $('#id_image_executive').attr('disabled', true);
                $('#id_spreadsheet_executive').attr('disabled', true);
            }
        });
                
        $('#id_init_date_reserve').on('change', function () {
            if ($('#id_init_date_reserve').val() != '') {
                hiden_error_message($('#id_init_date_reserve'));

                var i_rever_date = moment($('#id_init_date_reserve').val());
                var f_rever_date = moment($('#id_finish_date_reserve').val());

                if (i_rever_date >= f_rever_date) {
                    show_error_message($('#id_finish_date_reserve'), 'Asegúrese que la fecha de terminación como reserva de cuadro no sea menor o igual a la fecha de inicio como reserva de cuadro');
                }else{
                    hiden_error_message($('#id_finish_date_reserve'));
                }
            }
        });

        $('#id_finish_date_reserve').on('change', function () {
            if ($('#id_finish_date_reserve').val() != '') {
                hiden_error_message($('#id_finish_date_reserve'));

                var gra_date = moment($('#id_init_date_reserve').val());
                var exp_date = moment($('#id_finish_date_reserve').val());

                if (gra_date >= exp_date) {
                    show_error_message($('#id_finish_date_reserve'), 'Asegúrese que la fecha de terminación como reserva de cuadro no sea menor o igual a la fecha de inicio como reserva de cuadro');
                }else{
                    hiden_error_message($('#id_finish_date_reserve'));
                }

            }
        });

        $('#id_init_date_executive').on('change', function () {
            if ($('#id_init_date_executive').val() != '') {
                hiden_error_message($('#id_init_date_executive'));

                var i_exec_date = moment($('#id_init_date_executive').val());
                var f_exec_date = moment($('#id_finish_date_executive').val());

                if (i_exec_date >= f_exec_date) {
                    show_error_message($('#id_finish_date_executive'), 'Asegúrese que la fecha de terminación como cuadro no sea menor o igual a la fecha de inicio como cuadro');
                } else {
                    hiden_error_message($('#id_finish_date_executive'));
                }
            }
        });

        $('#id_finish_date_executive').on('change', function () {
            if ($('#id_finish_date_executive').val() != '') {
                hiden_error_message($('#id_finish_date_executive'));

                var i_exec_date = moment($('#id_init_date_executive').val());
                var f_exec_date = moment($('#id_finish_date_executive').val());

                if (i_exec_date >= f_exec_date) {
                    show_error_message($('#id_finish_date_executive'), 'Asegúrese que la fecha de terminación como cuadro no sea menor o igual a la fecha de inicio como cuadro');
                } else {
                    hiden_error_message($('#id_finish_date_executive'));
                }

            }
        });

    };

    const submitForm = function () {

        $('#form_submit').click(function () {

            if($('#id_first_name').val() == ''){
                show_error_message($('#id_first_name'), 'Este campo es requerido');
                return;
            }

            if(!$('#id_first_name').val().match(/^[a-zA-Z áÁéÉíÍóÓúÚñÑ.]+$/)) {
                show_error_message($('#id_first_name'), 'Este campo solo admite letras');
                return;
            }

            if($('#id_last_name').val() == ''){
                show_error_message($('#id_last_name'), 'Este campo es requerido');
                return;
            }

            if(!$('#id_last_name').val().match(/^[a-zA-Z áÁéÉíÍóÓúÚñÑ.]+$/)) {
                show_error_message($('#id_last_name'), 'Este campo solo admite letras');
                return;
            }

            if($('#id_identification').val() == ''){
                show_error_message($('#id_identification'), 'Este campo es requerido');
                return;
            }

            if(!$('#id_identification').val().match(/^\d{2}([0]?[0-9]|[1]?[0-2])([0-2]?[0-9]|[3]?[0-1])\d{5}$/)){
                show_error_message($('#id_identification'), 'Formato de carnet de identidad incorrecto');
                return;
            }

            if($('#id_identification').val().length !== 11) {
                show_error_message($('#id_identification'), 'Este campo debe contener 11 caractéres');
                return;
            }

            if(identification_exists){
                show_error_message($('#id_identification'), 'Ya existe Trabajador con este Carnet de indentidad');
                return;
            };

            if($('#id_position').val() == ''){
                show_error_message($('#id_position'), 'Este campo es requerido');
                return;
            }

            var i_rever_date = moment($('#id_init_date_reserve').val());
            var f_rever_date = moment($('#id_finish_date_reserve').val());

            if (i_rever_date >= f_rever_date) {
                show_error_message($('#id_finish_date_reserve'), 'Asegúrese que la fecha de terminación como reserva de cuadro no sea menor o igual a la fecha de inicio como reserva de cuadro');
                return;
            }

            var i_exec_date = moment($('#id_init_date_executive').val());
            var f_exec_date = moment($('#id_finish_date_executive').val());

            if (i_exec_date >= f_exec_date) {
                show_error_message($('#id_finish_date_executive'), 'Asegúrese que la fecha de terminación como cuadro no sea menor o igual a la fecha de inicio como cuadro');
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
                        title: '¡El Empleado se ha registrado satisfactoriamente!',
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
    CreateEmployee.init();
});