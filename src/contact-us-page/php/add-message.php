<?php

require("../../common/php/connection.php");

$connection = new ConnectionMySQL();
$pdo = $connection->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$name = $data->name;
$email = $data->email;
$message = $data->message;
$result = null;

try {
    $query = $pdo->prepare("INSERT INTO tMessaggio (nome,email,messaggio) VALUES (:name, :email, :message)");
    $query->execute(["name" => $name, "email" => $email, "message" => $message]);
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