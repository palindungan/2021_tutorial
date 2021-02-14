<?php
$number = 1;
for ($i = 1; $i <= 5; $i++) { // looping ke bawah atau enter

    echo "baris ke" . $i . ' :';

    for ($j = 1; $j <= $i; $j++) { // looping ke kanan atau menggambar
        echo $number;
        $number = $number + 1;
    }

    echo "<br>"; // enter
}
