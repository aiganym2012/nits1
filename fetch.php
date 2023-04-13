<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "proj2";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$name = $_POST["name"];
$date = $_POST["date"];
$time = $_POST["time"];

$sql = "SELECT * FROM observation WHERE name='$name' and date='$date' and time='$time'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {

		echo "Name: " . $row["name"] . "<br>";
		echo "Дата: " . $row["date"] . "<br>";
		echo "Время: " . $row["time"] . "<br>";

		$sealevel_data = $row["sealevel"];
		$sealevel_base64 = base64_encode($sealevel_data);
		echo "Уровень моря: <br>";
		echo '<img src="data:image/jpeg;base64,'.$sealevel_base64.'"><br>';

		

		$seahigh_data = $row["seahigh"];
		$seahigh_base64 = base64_encode($seahigh_data);
		echo "Высота волны: <br>";
		echo '<img src="data:image/jpeg;base64,'.$seahigh_base64.'"><br>';

		echo "Период волны: " . $row["period"] . "<br><br>";
	}
} else {
	echo "No results found.";
}

mysqli_close($conn);
?>
