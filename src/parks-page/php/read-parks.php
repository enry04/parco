<?php

require("../../common/php/connection.php");

$mySql = new ConnectionMySQL();
$pdo = $mySql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$regionId = $data->regionId;

$query = $pdo->prepare("SELECT tParco.nome AS nomeParco, tParco.id AS idParco, tParco.*, tRegione.* FROM tParco INNER JOIN tRegione ON tParco.idRegione = tRegione.id WHERE idRegione =:regionId ORDER BY tParco.nome");
$query->execute(['regionId' => $regionId]);
$dataList = $query->fetchAll();
$result = null;

if ($dataList != null) {
    $result = array(
        "data" => json_encode($dataList),
        "status" => "success",
    );
} else {
    $result = array(
        "data" => null,
        "status" => "error",
    );
}

echo json_encode($result);
