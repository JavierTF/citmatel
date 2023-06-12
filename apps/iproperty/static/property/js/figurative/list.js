'use strict';

const ListFigurative = function () {

    const initEvent = function () {

        $('.delete_figurative').on('click', function () {
            Swal.fire({
              title: 'Seguro desea eliminar la Clasificación de elementos figurativos?',
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
                                title: 'La Clasificación de elementos figurativos ha sido eliminada satisfactoriamente!',
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

    };

    return {
        init: function () {
            initEvent();
        }
    };
}();

$(document).ready(function() {
    ListFigurative.init();
});