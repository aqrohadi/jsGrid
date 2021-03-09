<?php

//fetch_data.php

$connect = new PDO("mysql:host=localhost;dbname=example", "root", "");

$method = $_SERVER['REQUEST_METHOD'];

if($method == 'GET')
{
 $data = array(
  ':buyer'    => "%" . $_GET['buyer'] . "%",
  ':dept'     => "%" . $_GET['dept'] . "%",
  ':total'    => "%" . $_GET['total'] . "%"
 );
 $query = "SELECT * FROM sample_data WHERE buyer LIKE :buyer AND dept LIKE :dept AND total LIKE :total ORDER BY id DESC";
 $statement = $connect->prepare($query);
 $statement->execute($data);
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output[] = array(
   'id'     => $row['id'],   
   'buyer'  => $row['buyer'],
   'dept'   => $row['dept'],
   'total'  => $row['total']
  );
 }
 header("Content-Type: application/json");
 echo json_encode($output);
}

if($method == "POST")
{
 $data = array(
  ':buyer'    => $_POST['buyer'],
  ':dept'     => $_POST["dept"],
  ':total'    => $_POST["total"]
 );

 $query = "INSERT INTO sample_data (buyer, dept, total) VALUES (:buyer, :dept, :total)";
 $statement = $connect->prepare($query);
 $statement->execute($data);
}

if($method == 'PUT')
{
 parse_str(file_get_contents("php://input"), $_PUT);
 $data = array(
  ':id'     => $_PUT['id'],
  ':buyer'  => $_PUT['buyer'],
  ':dept'   => $_PUT['dept'],
  ':total'  => $_PUT['total']
 );
 $query = "UPDATE sample_data SET buyer = :buyer, dept = :dept, total = :total WHERE id = :id";
 $statement = $connect->prepare($query);
 $statement->execute($data);
}

if($method == "DELETE")
{
 parse_str(file_get_contents("php://input"), $_DELETE);
 $query = "DELETE FROM sample_data WHERE id = '".$_DELETE["id"]."'";
 $statement = $connect->prepare($query);
 $statement->execute();
}

?>
