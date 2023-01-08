<?php

require("../../common/php/connection.php");

$connection = new ConnectionMySQL();
$pdo = $connection->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$parkId = $data->parkId;
$speciesId = $data->speciesId;
$gender = $data->gender;
$generation = $data->generation;
$state = $data->state;
$age = $data->age;
$result = null;

try {
    $query = $pdo->prepare("INSERT INTO tAnimale (idParco, idSpecieFauna, generazione, sesso, stato, dataNascita) VALUES (:parkId, :speciesId, :generation, :gender, :state, :age)");
    $query->execute(["parkId" => $parkId, "speciesId" => $speciesId, "gender" => $gender, "generation" => $generation, "state" => $state, "age" => $age]);
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