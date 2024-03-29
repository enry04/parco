<?php

require("../../common/php/connection.php");

$mySql = new ConnectionMySQL();
$pdo = $mySql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$parkId = $data->parkId;

$query = $pdo->prepare("SELECT tSpecieFlora.nome, tVegetale.*,COUNT(tSpecieFlora.nome) AS nArbusti FROM tSpecieFlora INNER JOIN tVegetale ON tVegetale.idSpecieFlora = tSpecieFlora.id WHERE tSpecieFlora.idFamigliaFlora = 1 AND tVegetale.idParco = :parkId GROUP BY tSpecieFlora.nome;
");
$query->execute(["parkId" => $parkId]);
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
