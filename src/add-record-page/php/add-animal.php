<?php

require("../../common/php/connection.php");

$connection = new ConnectionMySQL();
$pdo = $connection->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$ordineAppartenenza = $data->order;
$specie = $data->species;
$sesso = $data->gender;
$generazione = $data->generation;
$stato = $data->state;
$eta = $data->age;

try {

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