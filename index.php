<!DOCTYPE html>
<html>
<head>
    <title>Hora Actual</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        p {
            font-size: 20px;
            color: #0078d4;
        }
    </style>
</head>
<body>
    <h1>Hora Actual</h1>
    <?php
    try {
        $date = new DateTime();
        echo "<p>La hora actual es: " . $date->format('Y-m-d H:i:s') . "</p>";
    } catch (Exception $e) {
        echo "<p>Error: " . $e->getMessage() . "</p>";
    }
    ?>
</body>
</html>
