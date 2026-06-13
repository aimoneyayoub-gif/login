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
    
    // check user by email
    $obj->select("black", "ip", null, "ip='{$auth}'", null, null);
    $is_email = $obj->getResult();
    if (isset($is_email[0]['ip']) == $auth) {
        echo json_encode([
            'status' => 0,
            'message' => 'user already Exists',
        ]);
    }else{
        $obj->insert('black', ['ip' => $auth,]);		
        $data = $obj->getResult();
        if ($data[0] == 1) {
            echo json_encode([
                'status' => 1,
                'message' => 'User add Successfully',
            ]);
        } else {
            echo json_encode([
                'status' => 0,
                'message' => 'Server Problem',
            ]);
        }
    }
   
} else {
    echo json_encode([
        'status' => 0,
        'message' => 'Access Denied',
    ]);
}
