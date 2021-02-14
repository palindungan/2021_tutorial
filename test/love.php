<?php
for ($i = 0; $i < 6; $i++) {
    echo "baris ke" . $i . "--- ";

    for ($j = 0; $j < 7; $j++) {

        // eliminasi sesuai dengan baris dan kebutuhan
        if (($i == 0 && $j % 3 != 0) || ($i == 1 && $j % 3 == 0) || ($i - $j == 2) || ($i + $j == 8)) {
            echo "*";
        } else {
            echo "-";
        }
    }

    echo "<br>";
}
