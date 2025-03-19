<?php
$dsn = "mysql:host=localhost;dbname=test001;charset=utf8mb4";
$username = "root";
$password = "";

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

// Define pagination variables
$rows_per_page = 20;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $rows_per_page;

// Fetch data with pagination
$stmt = $pdo->prepare("SELECT * FROM test_table LIMIT :limit OFFSET :offset");
$stmt->bindParam(':limit', $rows_per_page, PDO::PARAM_INT);
$stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
$stmt->execute();
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Fetch total number of rows
$total_rows_stmt = $pdo->query("SELECT COUNT(*) FROM test_table");
$total_rows = $total_rows_stmt->fetchColumn();
$total_pages = ceil($total_rows / $rows_per_page);

// Example: Different Fetch Methods in PDO
$fetchExample = $pdo->query("SELECT * FROM test_table LIMIT 1");
$fetch_assoc = $fetchExample->fetch(PDO::FETCH_ASSOC); // Fetch as associative array
$fetch_num = $fetchExample->fetch(PDO::FETCH_NUM); // Fetch as indexed array
$fetch_both = $fetchExample->fetch(PDO::FETCH_BOTH); // Fetch as both
$fetch_obj = $fetchExample->fetch(PDO::FETCH_OBJ); // Fetch as object
$fetch_all = $pdo->query("SELECT * FROM test_table LIMIT 5")->fetchAll(PDO::FETCH_ASSOC); // Fetch all as associative array
?>

<!DOCTYPE html>
<html>
<head>
    <title>Pagination with PDO</title>
</head>
<body>

<h2>PDO Fetching Methods</h2>
<ul>
    <li><strong>FETCH_ASSOC:</strong> <?= print_r($fetch_assoc, true) ?></li>
    <li><strong>FETCH_NUM:</strong> <?= print_r($fetch_num, true) ?></li>
    <li><strong>FETCH_BOTH:</strong> <?= print_r($fetch_both, true) ?></li>
    <li><strong>FETCH_OBJ:</strong> <?= print_r($fetch_obj, true) ?></li>
    <li><strong>FETCH_ALL (First 5 rows):</strong> <?= print_r($fetch_all, true) ?></li>
</ul>

<h2>User List (Page <?= $page ?>)</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Email</th>
    </tr>
    <?php foreach ($rows as $row) : ?>
    <tr>
        <td><?= htmlspecialchars($row['id']) ?></td>
        <td><?= htmlspecialchars($row['name']) ?></td>
        <td><?= htmlspecialchars($row['age']) ?></td>
        <td><?= htmlspecialchars($row['email']) ?></td>
    </tr>
    <?php endforeach; ?>
</table>

<!-- Pagination Links -->
<div>
    <?php if ($page > 1) : ?>
        <a href="?page=<?= $page - 1 ?>">Previous</a>
    <?php endif; ?>
    
    <?php for ($i = 1; $i <= $total_pages; $i++) : ?>
        <a href="?page=<?= $i ?>"><?= $i ?></a>
    <?php endfor; ?>
    
    <?php if ($page < $total_pages) : ?>
        <a href="?page=<?= $page + 1 ?>">Next</a>
    <?php endif; ?>
</div>

</body>
</html>