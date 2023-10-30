<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <style>
        .product {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            float: left;
            width: 200px;
            text-align: center;
        }

        img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <h1>Product List</h1>

    <?php
    $conn = mysqli_connect('db', 'chathu', 'chathu', 'spicecenter');

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "SELECT * FROM products";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<div class='product'>";
            echo "<img src='images/" . $row['img'] . "' alt='" . $row['name'] . "'>";
            echo "<h2>" . $row['name'] . "</h2>";
            echo "<p>" . $row['desc'] . "</p>";
            echo "<p>Price: $" . $row['price'] . "</p>";
            echo "<p>RRP: $" . $row['rrp'] . "</p>";
            echo "<p>Quantity: " . $row['quantity'] . "</p>";
            echo "<button>Add to Cart</button>";
            echo "</div>";
        }
    } else {
        echo "No products found.";
    }

    mysqli_close($conn);
    ?>
</body>
</html>
