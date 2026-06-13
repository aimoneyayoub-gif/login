<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: *');

header('Content-Type:application/json');
include '../database/Database.php';
include '../vendor/autoload.php';

use \Firebase\JWT\JWT;

$obj = new Database();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
   

    $obj->select('panel', 'onof', null, null, null, null);
    $datas = $obj->getResult();
    if($datas){
        echo json_encode($datas[0]['onof']);
           
        
    }else{
        echo json_encode([
            'status' => 0,
            'message' => 'error',
        ]);
    }
    
} else {
    echo json_encode([
        'status' => 2,
        'message' => 'Access Denied',
    ]);
}
