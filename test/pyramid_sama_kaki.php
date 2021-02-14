<?php

$n = 4;
for ($i = 1; $i <= $n; $i++) { // looping ke bawah
    echo "baris ke" . $i . " ";
    for ($j = 1; $j <= ($n + ($n - 1)); $j++) { // looping ke samping
        $var = $i - 1;
        if ($j >= $n - $var && $j <= $n + $var) { // validasi / eliminasi
            echo "*";
        } else {
            echo "-";
        }
    }
    echo "<br>"; // enter
}
