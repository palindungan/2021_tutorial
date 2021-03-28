<?php
require_once 'conn.php';
$sql = "SELECT * FROM user";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
?>
        <tr>
            <td><?php echo $row['first_name']; ?></td>
            <td><?php echo $row['last_name']; ?></td>
            <td><?php echo $row['created_date']; ?></td>
        </tr>
    <?php
    }
} else {
    ?>

    <tr>
        <td colspan="3">No User Found</td>
    </tr>

<?php
}
?>