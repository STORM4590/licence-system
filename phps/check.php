<?php
$ip = $_SERVER['REMOTE_ADDR'];
$sql = mysqli_connect("145.14.145.145", "id18700182_wrixity", "raza#4590@Storm", "id18700182_wrixityhost");
$checkServer = "SELECT * FROM licenses WHERE serverip='$ip';";
$result = mysqli_query($sql, $checkServer);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "Authenticated";
        break;
    }
    } else {
    echo "Not Authenticated";
}
mysqli_close($sql);
?>