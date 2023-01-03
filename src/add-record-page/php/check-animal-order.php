<?php

require("../../common/php/connection.php");

$mySql = new ConnectionMySQL();
$pdo = $mySql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$order = $data->order;

$query = $pdo->prepare("SELECT * FROM tOrdineAppartenenzaFauna WHERE nome=:order");
$query->execute(["order" => $order]);
$data = $query->fetch();
$result = null;

if ($data == null) {
    $result = array(
        "data" => null,
        "status" => "success",
    );
} else {
    $result = array(
        "data" => null,
        "status" => "already present",
    );
}

echo json_encode($result);