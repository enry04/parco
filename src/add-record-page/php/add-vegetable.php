<?php

require("../../common/php/connection.php");

$connection = new ConnectionMySQL();
$pdo = $connection->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$parkId = $data->parkId;
$speciesId = $data->speciesId;
$season = $data->season;
$result = null;

try {
    $query = $pdo->prepare("INSERT INTO tVegetale (idParco, idSpecieFlora, stagioneFioritura) VALUES (:parkId, :speciesId, :season)");
    $query->execute(["parkId" => $parkId, "speciesId" => $speciesId, "season" => $season]);
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
