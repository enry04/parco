<?php

require("../../common/php/connection.php");

$mySql = new ConnectionMySQL();
$pdo = $mySql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$order = $data->order;

$query = $pdo->prepare("SELECT * FROM tOrdineAppartenenzaFauna WHERE nome=:order");
$query->execute(["order" => $order]);
$orderData = $query->fetch();
$result = null;

if ($orderData != null) {
    $result = array(
        "data" => json_encode($orderData),
        "status" => "already present",
    );
} else {
    $result = array(
        "data" => null,
        "status" => "not present",
    );
}

echo json_encode($result);