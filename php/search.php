<?php
    $data=$_POST['sdata'];
  


   if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["sch"])) {

        if ($_POST["sch"]=="Registration no")
        {
            
            $sql="select * from studentdata where rno= ".$data;
        }
        if ($_POST["sch"]=="Name")
        {
           
            $sql="select * from studentdata where uname= ".$data;
        }
        if ($_POST["sch"]=="Address")
        {
            $sql="select * from studentdata where adr= ".$data;
        }
       
    } else {
        echo "No data selected.";
    }
}


$sname="localhost";
$user= "root";
$pass ="";
$dbname= "studentdb";


$conn = new mysqli($sname,$user,$pass,$dbname);


if ($conn -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
    exit();
  }


$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo' <div class="homeicon">
    <a href="http://localhost/senarathne/" >Home</a> </div> <br/>
    
    <table>

    <tr><td>Register No :</td><td>'.$row["rno"].'</td></tr>
    <tr><td>Name</td><td>'.$row["uname"].'</td></tr>
    <tr><td>address :</td><td>'.$row["adr"].'</td></tr>
    <tr><td>gender :</td><td>'.$row["gender"].'</td></tr>
    <tr><td>telephone  :</td><td>'.$row["tep"].'</td></tr>
    </table> ';


   
    
  }
} else {
  echo "0 results";
}
$conn->close();
?>