<?php
$input = "HAH";
echo '<br> Input String ' . $input;
$reverse = strrev($input);

if ($input == $reverse) {
    echo '<br> is a palindrom ';
} else {
    echo '<br>' . $input . ' ';
    echo '<br> is not a palindrom ';
}
