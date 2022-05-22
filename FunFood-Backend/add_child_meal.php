<?php
header('Content-Type: application/json');
include("connection.php");
$s = array();
	    

        $data = json_decode(file_get_contents("php://input"));
        $user_id = $data->user_id;
        $serving = $data->serving;
        $url = $data->URL;
        $d = date("Y/m/d H:i:s");
        $ds = date("Y/m/d H:i:s");
        $date = explode('/', $d);
        $time = explode(' ', $ds);

             
                    $sql = "INSERT INTO meals (`user_id`,`image`,`name`,`year`,`mounth`,`day`,`m_time`) VALUES (?,?,?,?,?,?,?)";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute([$user_id,$url,$serving,$date[0],$date[1],$date[2],$time[1]]);
                
            		$sql = "SELECT * from meals where user_id = ? and image = ?";
		            $stmt = $conn ->prepare($sql);
		            $stmt->execute([$user_id,$url]);
		            $meal = $stmt->fetch();
            		$s = array(
                    'code'=>"1",
                    	'meal_id'=>$meal['id'],
                        'user_id'=>$user_id,
                        'serving'=>$serving,
                        'URL'=>$url,
                        'year'=>$date[0],
                        'mounth'=>$date[1],
                        'day'=>$date[2],
                        'time'=>$time[1],
                    'message'=>'meal Added successfully'
                );
                echo json_encode($s);
            
        
?>