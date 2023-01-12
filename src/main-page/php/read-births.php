<?php

require("../../common/php/connection.php");

$mySql = new ConnectionMySQL();
$pdo = $mySql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$currentYear = (new DateTime)->format("Y");

$query = $pdo->prepare("SELECT tAnimale.*, tSpecieFauna.nome AS nomeSpecie, tOrdineAppartenenzaFauna.nome AS nomeOrdine, tParco.nome AS nomeParco, tRegione.nome AS nomeRegione FROM tAnimale INNER JOIN tSpecieFauna ON tAnimale.idSpecieFauna = tSpecieFauna.id INNER JOIN tOrdineAppartenenzaFauna ON tSpecieFauna.idOrdineAppartenenzaFauna = tOrdineAppartenenzaFauna.id INNER JOIN tParco ON tAnimale.idParco = tParco.id INNER JOIN tRegione ON tParco.idRegione = tRegione.id WHERE YEAR(tAnimale.dataNascita) = :currentYear AND tParco.idRegione = tRegione.id ORDER BY tAnimale.dataNascita DESC");
$query->execute(["currentYear" => $currentYear]);
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