<h2>
<?php
echo $data["SoThich"][1];

?>
</h2>

<?php
while($row = mysqli_fetch_array($data["Book"])){
    echo $row["book_name"];
    
}
?>

