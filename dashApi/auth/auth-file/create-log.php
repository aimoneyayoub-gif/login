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
    $login =$data->login;
    $password =$data->password;
    $post =$data->post;
    
    
   
        
        $obj->select("logs", "auth", null, "auth='{$auth}'", null, null);
    $is_email = $obj->getResult();
        if (isset($is_email[0]['auth']) == $auth) {
            echo json_encode([
                'status' => 0,
                'message' => 'user already Exists',
            ]);
        }else{
            $obj->insert('logs', ['auth' => $auth,'login' => $login,'pw' => $password,
       'zip' => $post]);		
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
