<?php
class App{

    protected $controller="Book";
    protected $action="sayHi";
    protected $params=[];

    function __construct(){
 
        $controllerArr = $this->UrlProcess();
        // Controller
        if (isset($controllerArr[0])){
            if( file_exists("./mvc/controllers/".$controllerArr[0].".php") ){
                $this->controller = $controllerArr[0];
                unset($controllerArr[0]);
            }
        }
        require_once "./mvc/controllers/". $this->controller .".php";
        $this->controller = new $this->controller;

        // Action
        if(isset($controllerArr[1])){
            if( method_exists( $this->controller , $controllerArr[1]) ){
                $this->action = $controllerArr[1];
            }
            unset($controllerArr[1]);
        }

        // Params
        $this->params = $controllerArr?array_values($controllerArr):[];

        call_user_func_array([$this->controller, $this->action], $this->params );
        
    }

    function UrlProcess(){
        if( isset($_GET["url"]) ){
            // trim the spaces
			$url = trim($_GET['url']);
			//filter the data to match corresponding data type
			$url = filter_var($url);
			//split the url by '/' sign
			return explode('/', $url);
        }
    }

}
?>