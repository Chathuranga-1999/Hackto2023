<?php
$r=$_POST['rno'];
$n=$_POST['uname'];
$adr=$_POST['adr'];

$tep=$_POST['tep'];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["gen"])) {
        $selectedGender = $_POST["gen"];
        
    } else {
        echo "No gender selected.";
    }
}



$sname="localhost";
$user="root";
$pas="";
$dbname="studentdb";


$conn = mysqli_connect($sname,$user,$pas,$dbname);
// Check connection
if ($conn -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}
$sql1 = "INSERT INTO studentdata (rno,uname,adr,gender,tep )
        VALUES ('$r','$n','$adr','$selectedGender','$tep')";



if ($conn->query($sql1) === TRUE) {
  echo '<script>alert("New record created successfully")</script>';
} else {
  echo "Error: " . $sql1 . "<br>" . $conn->error;
}

$conn->close();


?>