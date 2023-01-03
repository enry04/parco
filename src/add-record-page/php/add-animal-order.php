<?php

require("../../common/php/connection.php");

$connection = new ConnectionMySQL();
$pdo = $connection->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$order = $data->order; 
$result = null;

try {

    $query = $pdo->prepare("INSERT INTO tOrdineAppartenenzaFauna (nome) VALUES (:ordineAppartenenza)");
    $query->execute(["ordineAppartenenza" => $order]);
    $result = array(
        'data' => null,
        'status' => "success",
    );
} catch (PDOException $e) {
    $result = array(
        'data' => $e,
        'status' => "error",
    );
}

echo json_encode($result);