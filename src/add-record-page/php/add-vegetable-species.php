<?php

require("../../common/php/connection.php");

$connection = new ConnectionMySQL();
$pdo = $connection->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$familyId = $data->familyId;
$species = $data->species; 
$result = null;

try {

    $query = $pdo->prepare("INSERT INTO tSpecieFlora (nome, idFamigliaFlora) VALUES (:species,:familyId)");
    $query->execute(["species" => $species, "familyId" => $familyId]);
    $getIdQuery = $pdo->query("SELECT LAST_INSERT_ID() FROM tSpecieFlora");
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