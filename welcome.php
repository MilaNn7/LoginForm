<?php
session_start(); //otvorenie session

//zistenie ci je session nastavene
if(isset($_SESSION['username']) ) {
    echo '<link rel=stylesheet href="welcome.css">';
    echo '<div class="zaklad">';
    echo '<p>Welcome <span>'.$_SESSION['username'].'</span></p><br>';
    echo '<p>Click here to <a href = "logout.php" tite = "Logout">logout.</p>';//odkaz na odhlasenie
    
    $servername = "localhost";
    $username = "horvath3a2";
    $password = "Neviem123";
    $dbname = "horvath3a2";

    $conn = new mysqli($servername, $username, $password, $dbname)

    if ($conn->connect_error){
        die("Connection failed: " . $conn ->connect_error);
    }

    $sql = "SELECT id, nazov, zaner, datum_vydania, cena FROM t_table";
    $result = $conn->query($sql);

    if($result->num_rows > 0){
        echo '<table border = "1">';
        echo '<tr> <th> ID </th>
        <th> Názov </th>
        <th> Žáner </th>
        <th> Rok Vydania </th>
        <th> Cena </th> </tr>';
        while($row=$result->fetch_assoc()){
            echo'<tr>';
            echo'<td>' . $row["id"] . '</td>';
            echo'<td>' . $row["nazov"] . '</td>';
            echo'<td>' . $row["zaner"] . '</td>';
            echo'<td>' . $row["datum_vydania"] . '</td>';
            echo'<td>' . $row["cena"] . '</td>';
        }
        echo'</table>';
    }
        else {
            echo "No data available.";
        }
    $conn->close();
    }
    echo '</div>';
}
?>
