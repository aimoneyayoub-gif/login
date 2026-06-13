<?php

//    add headers

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: *');

header('Content-Type:application/json');
include '../database/Database.php';
$obj = new Database();

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $data = json_decode(file_get_contents("php://input"));
    $auth =$data->auth;
        $obj->delete('country', "country ='{$country}'");		
        $data = $obj->getResult();
        if ($data[0] == 1) {
            echo json_encode([
                'status' => 1,
                'message' => 'User deleted Successfully',
            ]);
        } else {
            echo json_encode([
                'status' => 0,
                'message' => 'Server Problem',
            ]);
        }
   
} else {
    echo json_encode([
        'status' => 0,
        'message' => 'Access Denied',
    ]);
}
