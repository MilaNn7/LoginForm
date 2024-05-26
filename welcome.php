<?php
session_start(); // Otvorenie session

// Kontrola, či je používateľ prihlásený, ak nie, presmeruje na prihlasovaciu stránku
if(!isset($_SESSION['valid']) || $_SESSION['valid'] !== true) {
    header("Location: index.php");
    exit();
}

$servername = "localhost";
$username = "horvath3a2"; 
$password = "Neviem123"; 
$dbname = "horvath3a2"; 
// Pripojenie k databáze
$conn = new mysqli($servername, $username, $password, $dbname);

// Overenie pripojenia
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}




$sql = "SELECT id, nazov, zaner, datum_vydania, cena FROM t_table";
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
    <style>
table, th, td {
  border:1px solid black;
}
</style>
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

        <form method="GET" action="">
            <label for="sort_by">Sort By:</label>
            <select name="sort_by" id="sort_by">
                <option value="id">ID</option>
                <option value="name">Name</option>
                <option value="genre">Genre</option>
                <option value="year">Year</option>
                <option value="price">Price</option>
            </select>
            <label for="order">Order:</label>
            <select name="order" id="order">
                <option value="ASC">Ascending</option>
                <option value="DESC">Descending</option>
            </select>
            <button type="submit">Sort</button>
        </form>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Genre</th>
                    <th>Year</th>
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
