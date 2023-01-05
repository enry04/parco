<?php

require("../../common/php/connection.php");

$mySql = new ConnectionMySQL();
$pdo = $mySql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$parkId= $data->parkId;

$query = $pdo->prepare("SELECT tAnimale.id AS idAnimale, tAnimale.*, tSpecieFauna.nome AS nomeSpecie, tSpecieFauna.*, tOrdineAppartenenzaFauna.nome AS nomeOrdine, tOrdineAppartenenzaFauna.* FROM tAnimale INNER JOIN tSpecieFauna ON tAnimale.idSpecieFauna = tSpecieFauna.id INNER JOIN tOrdineAppartenenzaFauna ON tSpecieFauna.idOrdineAppartenenzaFauna = tOrdineAppartenenzaFauna.id WHERE tAnimale.idParco =:parkId");
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