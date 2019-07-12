<?php 
define("HOST","localhost");
define("USER","root");
define("PASS","root");
define("DB","comments");
$conn = mysqli_connect(HOST,USER,PASS,DB) or die("Bilgilerde hata var");
$username = $_POST["username"];
$rating = $_POST["rating"];
$comment = $_POST["comment"];
$post_id = 1;
if(isset($username) && isset($rating) && isset($comment) && isset($post_id)){
    $sql = "INSERT INTO comments(username,comment,rating,post_id) VALUES ('$username','$comment','$rating','$post_id')";
    $result = mysqli_query($conn,$sql);
    $res = ["request"=>"success"];
    echo json_encode($res);
}else if($_GET["type"] == "get"){
    $sql = "SELECT * FROM comments WHERE post_id=1";
    $result = mysqli_query($conn,$sql);
    $arr = [];
    while($row = mysqli_fetch_assoc($result)){
        array_push($arr,$row);
    }
    echo json_encode($arr);
}else{
    $res = ["request"=>"fail"];
    echo json_encode($res);
}

?>