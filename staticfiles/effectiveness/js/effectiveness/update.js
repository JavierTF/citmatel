'use strict';
     
const UpdateEffectiveness = function () {
    const indicators = $('#indicators');
    var list_indicators_exclude = [];
    var list_measurers = [];
    const form = $("#form_update_effectiveness");

    const get_indicators = function (search= "__all__", indicator = 0) {
        $.ajax({
            type: 'GET',
            url: get_indicators_path,
            data: { process_id: $('#id_process').val(), search: search, excludes: list_indicators_exclude }
        }).then(function (data) {
            // create the option and append to Select2
            indicators.empty().trigger('change');

            for (let i = 0; i < data.results.length; i++){
                const option = new Option(
                    data.results[i].text,
                    data.results[i].id,
                    data.results[i].id === Number(indicator) ? true : false,
                    data.results[i].id === Number(indicator) ? true : false
                );
                indicators.append(option).trigger('change');

                if(data.results[i].id === Number(indicator)){
                    indicators.trigger({
                        type: 'select2:select',
                        params: {
                            data: data.results[i]
                        }
                    });
                }
            }

        });
    };

    const initInputs= function () {

        indicators.select2({
            placeholder: 'Seleccione un indicador',
            lenguage: 'es',
        });

        $.ajax({
            url: get_list_indicators_path,
            data: {'effectiveness_id': effectiveness_id, 'semester': semester},
            dataType: 'json',
            success: function(data){
                for(var i = 0; i < data.indicators.length; i++){
                    list_measurers.push(data.indicators[i]);
                    list_indicators_exclude.push(data.indicators[i].indicator);
                }
                get_indicators();
            }
        });

        $('#list_measurers').html('');

    };

    const initEvent = function () {

        $('#id_evaluator').on('change', function () {
            if ($('#id_evaluator').val() != '') {
                hiden_error_message($('#id_evaluator'));
            } else {
                show_error_message($('#id_evaluator'), 'Este campo es requerid');
            }
        });

        indicators.on('change', function () {
            if(indicators.val()){
                $.ajax({
                    url: get_measurers_path,
                    data: {'indicator_id': indicators.val()},
                    dataType: 'json',
                    success: function(data){
                        var html = '<table class="table table-bordered table-striped">';
                        html += '<thead><tr><th></th><th>No.</th><th>Indicador de medida</th><th>Calificación</th></tr></thead><tbody>';
                        for(var i = 0; i < data.results.length; i++){
                            html += '<tr><td><input class="radio-inline" type="radio" name="measurer" value="' + data.results[i].id + '" text="' + data.results[i].text + '" qualification="' + data.results[i].qualification + '"></td><td>' + (i + 1) + '</td><td>' + data.results[i].text + '</td><td><span class="text-danger">' + data.results[i].qualification + '</span></td></tr>';
                        }
                        html += '</tbody></table>';
                        $('#list_measurers').html(html);
                        hiden_error_message(indicators);
                    }
                });
            }
        });

        $('#add_measurer').on('click', function () {
            if (indicators.val() == ''){
                show_error_message(indicators, 'Este campo es requerido');
                return;
            }
            if (!$('input[name="measurer"]:checked').val()){
                return;
            }
            const measurer = $('input[name="measurer"]:checked');

            addMeasurer({"indicator": indicators.val(), "measurer": measurer.attr('value')});
            list_indicators_exclude.push(indicators.val());

            var html = '<tr>';
            html += '<td>' + (list_measurers.length) + '</td><td>' + indicators.find('option:selected').text() + '</td><td>' + measurer.attr('text') + '</td><td>' + measurer.attr('qualification') + '</td><td><a class="btn btn-sm btn-default" onclick="UpdateEffectiveness.editMeasurer(' + measurer.attr('value') + ', \'' + indicators.find('option:selected').text() + '\')"><i class="fa fa-edit"></i></a> <a class="btn btn-sm btn-default" onclick="UpdateEffectiveness.removeMeasurer(' + measurer.attr('value') + ')"><i class="fa fa-trash"></i></a></td>';
            html += '</tr>';

            get_indicators();
            hiden_error_message(indicators);

            $('#table-measurer').append(html);

            $('#list_measurers').html('');

        });

    };

    const submitForm = function () {

        $('#form_submit').click(function () {

            if($('#id_process').val() == ''){
                show_error_message($('#id_process'), 'Este campo es requerido');
                return;
            }

            if($('#id_year').val() == ''){
                show_error_message($('#id_year'), 'Este campo es requerido');
                return;
            }

            if($('#id_semester').val() == ''){
                show_error_message($('#id_semester'), 'Este campo es requerido');
                return;
            }

            if($('#id_evaluator').val() == ''){
                show_error_message($('#id_evaluator'), 'Este campo es requerido');
                return;
            }

            if(list_measurers.length == 0){
                $('#text_error_measurers').html('Este campo es requerido');
                return; // poner mensaje antes
            }

            var formData = new FormData(form[0]);
            for (var i = 0; i < list_measurers.length; i++){
                formData.append('measurers[]', list_measurers[i].measurer);
            }

            $.ajax({
                type: "POST",
                url: form.attr('action'),
                data: formData,
                contentType: false,
                processData: false,
                success: function (data) {
                    Swal.fire({
                        title: '¡El proceso ha sido evaluado satisfactoriamente!',
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

    const addMeasurer = function (measurer) {
        list_measurers.push(measurer);
    };
    
    const editMeasurer = function (elem, index, text) {
        const indicator = list_measurers.filter((item) => item.measurer == index )[0].indicator;

        const x = list_measurers.filter((item) => item.measurer != index );
        list_measurers = x;

        const y = list_indicators_exclude.filter((item) => item != indicator);
        list_indicators_exclude = y;

        var tr = elem.parentNode.closest('tr');
        tr.remove();

        get_indicators('__all__', indicator);

        $.ajax({
            url: get_measurers_path,
            data: {'indicator_id': indicator},
            dataType: 'json',
            success: function(data){
                var html = '<table class="table table-bordered table-striped">';
                html += '<thead><tr><th></th><th>No.</th><th>Indicador de medida</th><th>Calificación</th></tr></thead><tbody>';
                for(var i = 0; i < data.results.length; i++){
                    html += '<tr><td><input class="radio-inline" type="radio" name="measurer" value="' + data.results[i].id + '" text="' + data.results[i].text + '" qualification="' + data.results[i].qualification + '"></td><td>' + (i + 1) + '</td><td>' + data.results[i].text + '</td><td><span class="text-danger">' + data.results[i].qualification + '</span></td></tr>';
                }
                html += '</tbody></table>';
                $('#list_measurers').html(html);
            }
        });
    };

    const removeMeasurer = function (elem, index) {
        const indicator = list_measurers.filter((item) => item.measurer == index )[0].indicator;

        const x = list_measurers.filter((item) => item.measurer != index );
        list_measurers = x;

        const y = list_indicators_exclude.filter((item) => item != indicator);
        list_indicators_exclude = y;

        var tr = elem.parentNode.closest('tr');
        tr.remove();

        get_indicators();
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
        },
        editMeasurer: function (index, text){
            editMeasurer(event.target, index, text);
        },
        removeMeasurer: function (index) {
          removeMeasurer(event.target, index);
        }
    };
}();

$(document).ready(function() {
    UpdateEffectiveness.init();
});