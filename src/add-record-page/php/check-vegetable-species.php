<?php

require("../../common/php/connection.php");

$mySql = new ConnectionMySQL();
$pdo = $mySql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$familyId = $data->familyId;
$species = $data->species;

$query = $pdo->prepare("SELECT * FROM tSpecieFlora WHERE nome=:species AND idFamigliaFlora=:familyId");
$query->execute(["species" => $species, "familyId" => $familyId]);
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
