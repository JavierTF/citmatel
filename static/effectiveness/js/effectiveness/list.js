'use strict';
     
const ListEffectiveness = function () {

    const initInput = function () {};

    const initEvent = function () {

        $('.delete_effectiveness').on('click', function () {
            Swal.fire({
              title: '¿Seguro desea eliminar la evaluación para este proceso?',
              showCancelButton: true,
              confirmButtonText: 'Confirmar',
              cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.value){
                    $.ajax({
                        url: $(this).attr('model-url'),
                        type: "GET",
                        success: function (data){
                            Swal.fire(
                                '¡La evaluación del proceso ha sido eliminada satisfactoriamente!', '', 'success'
                            ).then((result) => {
                                setTimeout(function() {
                                    $(location).attr('href', '');
                                }, 1250);
                            });
                        }
                    });
                }
            });
        });

        $('#example1').on('search.dt', function() {
            var value = $('.dataTables_filter input').val();
            $('form input[name="search"]').val(value);
            console.log($('form input[name="search"]').val());
        });

    };

    return {
        init: function () {
            initInput();
            initEvent();
        }
    };
}();

$(document).ready(function() {
    ListEffectiveness.init();
});