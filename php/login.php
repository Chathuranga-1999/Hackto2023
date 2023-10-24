<?php
    $n=$_POST['uname'];
    $p =$_POST['pwd'];


$sname="localhost";
$user= "root";
$pass ="";
$dbname= "studentdb";


$conn = new mysqli($sname,$user,$pass,$dbname);


if ($conn -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
    exit();
  }

$sql="select * from user";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    if($n==$row["uname"] && $p==$row["pwd"])
    {
       
        echo '<script>
            var confrm = confirm(" do you want Log out");
            var status = document.getElementById("content");
            if (confrm == true)
            {
                window.location.href = "http://localhost/senarathne/";
                exit();
            }
            else
            {
                window.location.href = "http://localhost/senarathne/student.html";
                exit();
            }
        </script>';
    }
    else{
        echo '<script>alert("username or password incorrect")
        window.location.href = "http://localhost/senarathne/index.html";
                exit();
        </script>';
    }
    
  }
} else {
  echo "0 results";
}
$conn->close();
?>