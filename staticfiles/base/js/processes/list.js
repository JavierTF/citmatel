'use strict';

const ListProcesses = function () {

    const initInput = function () {};

    const initTable = function () {
        $('#example2').DataTable( {
            "lengthMenu": [[-1, 10, 25, 50, 100], ["Todos", 10, 25, 50, 100]],
            ordering: false,
            fixedHeader: true,
            language: {
                "decimal": "",
                "emptyTable": "No hay información",
                "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
                "infoEmpty": "Mostrando 0 a 0 de 0 Entradas",
                "infoFiltered": "(Filtrado de _MAX_ total entradas)",
                "infoPostFix": "",
                "thousands": ",",
                "lengthMenu": "Mostrar _MENU_ Entradas",
                "loadingRecords": "Cargando...",
                "processing": "Procesando...",
                "search": "Buscar:",
                "zeroRecords": "Sin resultados encontrados",
                "paginate": {
                    "first": "Primero",
                    "last": "Último",
                    "next": "Siguiente",
                    "previous": "Anterior"
                }
            },
            "search": {
                "caseInsensitive": true
            },
        });
    };

    const initEvent = function () {

        $('#example2').on('click', 'a.delete_process', function () {
            Swal.fire({
              title: '¿Seguro desea eliminar el Proceso?',
              showCancelButton: true,
              confirmButtonText: 'Confirmar',
              cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.value){
                    $.ajax({
                        url: $(this).attr('model-url'),
                        type: "GET",
                        success: function (data){
                            Swal.fire({
                                title: '¡El Proceso ha sido eliminado satisfactoriamente!',
                                type: 'success',
                                timer: 2000,
                                showConfirmButton: false
                            }).then((result) => {
                                $(location).attr('href', '');
                            });
                        }
                    });
                }
            });
        });

        $('#example2').on('search.dt', function() {
            var value = $('.dataTables_filter input').val();
            $('form input[name="search"]').val(value);
            console.log($('form input[name="search"]').val());
        });

    };

    return {
        init: function () {
            initInput();
            initTable();
            initEvent();
        }
    };
}();

$(document).ready(function() {
    ListProcesses.init();
});