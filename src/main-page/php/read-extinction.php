<?php

require("../../common/php/connection.php");

$mySql = new ConnectionMySQL();
$pdo = $mySql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$query = $pdo->query("SELECT tSpecieFauna.nome AS nomeSpecie, COUNT(CASE tAnimale.stato WHEN 'malato' THEN 1 ELSE null END)/COUNT(tAnimale.stato)*100 AS percEsemplariMalati, tOrdineAppartenenzaFauna.nome AS nomeOrdine FROM tSpecieFauna INNER JOIN tAnimale ON tSpecieFauna.id = tAnimale.idSpecieFauna INNER JOIN tOrdineAppartenenzaFauna ON tSpecieFauna.idOrdineAppartenenzaFauna = tOrdineAppartenenzaFauna.id GROUP BY tSpecieFauna.nome HAVING COUNT(tAnimale.stato) > 5");
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