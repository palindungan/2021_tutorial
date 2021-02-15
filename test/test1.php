<?php
for ($angka = 1; $angka <= 100; $angka++) {

    $k = 0;
    for ($i = 1; $i <= $angka; $i++) {
        if ($angka % $i == 0) {
            $k++;
        }
    }

    if ($k == 2) {
        echo $angka . "<br>";
    }
}
