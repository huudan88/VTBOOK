<?php
class Controller{

    public function requiremodel($model){
        if (file_exists("./mvc/models/".$model.".php")){
			require_once "./mvc/models/".$model.".php";
			return new $model;
		}else {
			echo $model. "model is not found";
		}
    }

    public function requireView($view, $data=[]){
        if (file_exists("./mvc/views/".$view.".php")){
			require_once "./mvc/views/".$view.".php";
		} else {
			echo $view. "view is not found";
		}
    }

}
?>