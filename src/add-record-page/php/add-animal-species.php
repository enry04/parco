<?php

require("../../common/php/connection.php");

$connection = new ConnectionMySQL();
$pdo = $connection->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$orderId = $data->orderId;
$species = $data->species; 
$result = null;

try {

    $query = $pdo->prepare("INSERT INTO tSpecieFauna (nome,idOrdineAppartenenzaFauna) VALUES (:species,:idOrder)");
    $query->execute(["species" => $species, "idOrder" => $orderId]);
    $getIdQuery = $pdo->query("SELECT LAST_INSERT_ID() FROM tSpecieFauna");
    $speciesData = $getIdQuery->fetch();
    $result = array(
        'data' => json_encode($speciesData),
        'status' => "success",
    );

} catch (PDOException $e) {
    $result = array(
        'data' => $e,
        'status' => "error",
    );
}

echo json_encode($result);