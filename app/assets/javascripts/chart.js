//window.onload = function() {
document.addEventListener('turbolinks:load', function(){
  var ctx = document.getElementById("myChart").getContext('2d');
  var data ={
      // labels: ["fecha1", "fecha2", "fecha3", "fecha4", "fecha6", "fecha6"],
      labels: getDays(),
      datasets: [{
          label: 'exchange1',
          data: [12, 19, 3, 5, 2, 3, 3, 5, 5, 8],
          borderColor: "rgba(16,133,135,1)",
          borderWidth: 1,
          fill: false
      },
      {
          label: 'exchange2',
          data: [1, 10, 15, 9, 8, 9, 10, 11, 11, 12],
          borderColor: "rgba(108,30,135,1)",
          borderWidth: 1,
          fill: false
      }]
  };

  var myChart = new Chart(ctx, {
      type: 'line',
      data: data,
      options: {
          scales: {
            yAxes: [{
              ticks: {
                callback: function(value, index, values) {
                    return '$' + value;
                }
              },
              scaleLabel: {
                display: true,
                labelString: 'Precio'
              }
            }],
            xAxes: [{
              scaleLabel: {
                display: true,
                labelString: 'Fecha'
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


  // ajax a info ruta, localhost:3000/info
  $.ajax({
    url: 'http://localhost:3000/info',
    type: 'GET',
    dataType: 'json',
    success: function(data) {
      var bitbay = JSON.stringify(data.bitbay);
      var blockchain = JSON.stringify(data.blockchain);


      // $("#bit1").append("<p>" + blockchain + "</p>");
      // $("#bit2").append("<p>" + bitbay + "</p>");
      // $("#bit2usd").append("<p> Dolar" + bitbay.USD + "</p>");
      // $("#bit2eur").append("<p> Euro" + bitbay.EUR + "</p>");
      // $("#bit1usd").append("<p> Dolar" + blockchain.USD + "</p>");
      // $("#bit1eur").append("<p> Euro" + blockchain.EUR + "</p>");
    }
  })
  .done(function(data) {
    console.log("resp" + data);
    // $("#bit1").append(data);
  })
  .fail(function() {
    console.log("error");
  });
});
