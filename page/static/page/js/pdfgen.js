$(document).ready(function(){
var specialElementHandlers = {
            '#editor': function (element,renderer) {
                return true;
            }
        };
        $('#cmd').click(function () {
            var doc = new jsPDF();
            var source = $('#order-detail').html();
            var specialElementHandlers = {
                '#bypassme': function (element, renderer) {
                    return true;
                }
            };
            doc.fromHTML(source, 0.5, 0.5, {
                'width': 75,'elementHandlers': specialElementHandlers
            });
            doc.output("dataurlnewwindow");
        });
    });
