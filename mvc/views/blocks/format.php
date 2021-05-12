<?php
function tableBuildUp($header,$dataOrder, $data){
    // header build

        echo '
        <table class="table table table-striped table-hover">
            <thead>
                
                <tr class="table-primary">
                <th><input class="form-check-input" type="checkbox" value="" name="select_all"></th>';
            foreach ($header as $columnVal){
            echo '<th scope="col">',$columnVal,'</th>';
            }

        echo '
                </tr>
            </thead>
            <tbody>';
                 foreach ($data as $row){
                    echo '
                    <tr>
                    <td><input class="form-check-input" type="checkbox" value="" id="'.$row['id'].'"></td>';
                    foreach ($dataOrder as $order){
                        echo '<td>'.$row[$order].'</td>';
                        
                    }
                 }                                
        echo '
                </tr>
            </tbody>
        </table>';
            
}
?>