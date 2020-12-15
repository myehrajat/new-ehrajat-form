<?php
$db = new SQLite3('cookies.sqlite');

$results = $db->query('SELECT * FROM moz_cookies');
while ($row = $results->fetchArray()) {
    var_dump($row);
}