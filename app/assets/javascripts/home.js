window.onload = function() {
  var ctx = document.getElementById("myChart").getContext('2d');
  var data ={
      // labels: ["fecha1", "fecha2", "fecha3", "fecha4", "fecha6", "fecha6"],
      labels: getDays(),
      datasets: [{
          label: 'exchange1',
          data: [12, 19, 3, 5, 2, 3],
          borderColor: "rgba(16,133,135,1)",
          borderWidth: 1,
          fill: false
      },
      {
          label: 'exchange2',
          data: [1, 10, 15, 9, 8, 9],
          borderColor: "rgba(108,30,135,1)",
          borderWidth: 1,
          fill: false
      }]
  }

  var myChart = new Chart(ctx, {
      type: 'line',
      data: data,
      options: {
          scales: {
            yAxes: [{
              ticks: {
                  // Include a dollar sign in the ticks
                  callback: function(value, index, values) {
                      return '$' + value;
                  }
              }
            }]
          }
      }
  });
  function getDays(){
    var daysAgo = []
    for(var i=1; i<=10; i++) {
      daysAgo[i] = moment().subtract(i, 'days').format("DD-MM-YYYY")
    }
    return daysAgo.sort((i, a) =>  i > a)
  }
};
