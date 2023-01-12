<?php

require("../../common/php/connection.php");

$mySql = new ConnectionMySQL();
$pdo = $mySql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$orderId = $data->orderId;
$species = $data->species;

$query = $pdo->prepare("SELECT * FROM tSpecieFauna WHERE nome=:species AND idOrdineAppartenenzaFauna=:orderId");
$query->execute(["species" => $species, "orderId" => $orderId]);
$speciesData = $query->fetch();
$result = null;

if ($speciesData != null) {
    $result = array(
        "data" => json_encode($speciesData),
        "status" => "already present",
    );
} else {
    $result = array(
        "data" => null,
        "status" => "not present",
    );
}

echo json_encode($result);
