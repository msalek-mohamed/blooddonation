
//========================================================================================================
  $(document).ready(function() {
        var ctx = $("#chart-line");
        var myLineChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: ["En cours", "Valider", "Affecter","Rejeter"],
                datasets: [{
                    data: [50,25,15,10],
                    backgroundColor: ["#FF0000", "#FFFF00", "#8BC34A", "#00BCD4 "]
                }]
            },
            options: {
                title: {
                    display: true,
                    text: 'Statistique de donation'
                }
            }
        });
    });
  $(document).ready(function() {
        var ctx = $("#chart-line1");
        var myLineChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: ["En cours", "Valider", "Affecter","Rejeter"],
                datasets: [{
                    data: [35,30,20,15],
                    backgroundColor: ["#8BC34A","#FF0000", "#00BCD4 ", "#FFFF00"]
                }]
            },
            options: {
                title: {
                    display: true,
                    text: 'Statistique de bénéficiation'
                }
            }
        });
    });
