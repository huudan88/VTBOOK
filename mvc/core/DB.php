<?php

class DB{

    public $conn;
    protected $servername = "localhost";
    protected $username = "root";
    protected $password = "";
    protected $dbname = "vtbooks";

    function init_Conn(){
        $this->conn = mysqli_connect($this->servername, 
                                    $this->username, 
                                    $this->password,
                                );
        if (!$this->conn){
            echo "Failed to connect to DB";
        } else{
            mysqli_select_db($this->conn, $this->dbname);
            mysqli_query($this->conn, "SET NAMES 'utf8'");
        }
    }

    // Run sql query and return to array
    function sqlExecution($sql){
		$this->init_Conn();

		$queryResult = mysqli_query($this->conn, $sql);
		$sqlData = array();

		if ($queryResult){
			while ($row = mysqli_fetch_assoc($queryResult))
			{
				$sqlData[] = $row;
			}
		}
		mysqli_close($this->conn);
		return $sqlData;
	}

	// Run sql query and return result
    function sqlInsertUpdate($sql){
		$this->init_Conn();

		$results = false;
		$queryResult = mysqli_query($this->conn, $sql);
		if ($queryResult){
			$results = true;
		}
		mysqli_close($this->conn);
		return $results;
	}

	// Run sql query and return mysqli_query
	function sqlExeMysqli_query($sql){
		$this->init_Conn();

		$queryResult = mysqli_query($this->conn, $sql);

		mysqli_close($this->conn);
		return $queryResult;
	}

}

?>