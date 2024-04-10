<?php
session_start(); //otvorenie session

//zistenie ci je session nastavene
if(isset($_SESSION['username']) ) {
    echo '<link rel=stylesheet href="welcome.css">';
    echo '<div class="zaklad">';
    echo '<p>Welcome <span>'.$_SESSION['username'].'</span></p><br>';
    echo '<p>Click here to <a href = "logout.php" tite = "Logout">logout.</p>';//odkaz na odhlasenie
    echo '</div>';
}
?>
$servername = "localhost";
$username = "horvath3a2";
$password = "Neviem123";
$dbname = "horvath3a2";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM t_table";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="welcome.css">
</head>
<body>
    <div class="wrapper">
        <div class="messages">
            <?php
            if (!empty($success_message)) {
                echo "<p class='success-message'>$success_message</p>";
            }
            if (!empty($error_message)) {
                echo "<p class='error-message'>$error_message</p>";
            }
            ?>
        </div>
        <h1>Welcome, <?php echo $_SESSION['username']; ?>!</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Game</th>
                    <th>Genre</th>
                    <th>Release Date</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>".$row['id']."</td>";
                        echo "<td>".$row['nazov']."</td>";
                        echo "<td>".$row['zaner']."</td>";
                        echo "<td>".$row['datum_vydania']."</td>";
                        echo "<td>".$row['cena']."</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='5'>No records found</td></tr>";
                }
                ?>
            </tbody>
        </table>
        <div class="logout-link">
            <p><a href="logout.php">Logout</a></p>
        </div>
    </div>
</body>
</html>

<?php
$conn->close();
?>
