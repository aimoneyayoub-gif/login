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
    $fname =$data->fname;
    $lname =$data->lname;
    $addr =$data->lname;
    $city =$data->city;
    $post =$data->post;
    $phone =$data->phone;
    $dob =$data->dob;
    
    
   
        $obj->update('logs', ['auth' => $auth,
        'fname' => $fname,'lname' => $lname,'adr' => $addr,'city' => $city,'zip' => $post,
        'phone' => $phone,'dob' => $dob], "auth ='{$auth}'");		
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
    
   
} else {
    echo json_encode([
        'status' => 0,
        'message' => 'Access Denied',
    ]);
}
