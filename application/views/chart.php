<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS --> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>CodeIgniter 3 ChartJS - Jaranguda.com</title>
</head>
<body>
<div class="container">
<canvas id="myChart"></canvas>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script type="text/javascript">
var ctx = document.getElementById('myChart').getContext('2d');
var chart = new Chart(ctx, {
type: 'line'
data: {
    labels: [
        <?php 
        if (count($graph)>0) {
            foreach ($graph as $data)
            echo "'".$data->pinjam_alat_bahan ."',";
        }
    ?>
    ],
    datasets: [{
        label:"Jumlah Peminjaman",
        backgroundClor: 'ADD8E6',
        borderColor: '##93C3D2',
        data: [
            <?php
            if (count($graph)>0) {
                foreach ($graph as $data) {
                    echo $data->jumlah .",";
                }
            }
            ?>
        ]
    }]
},
});
</script>
</body>
</html>