<?php
$sql = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'cars_data_en' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`brand` VARCHAR(255) NOT NULL," .
        "`name` VARCHAR(255) NOT NULL," .
        "`color` VARCHAR(255) NOT NULL," .
        "`mileage` VARCHAR(255) NOT NULL," .
        "`doors` VARCHAR(255) NOT NULL," .
        "`convertible` VARCHAR(255) NOT NULL," .
        "`coupe` VARCHAR(255) NOT NULL," .
        "`type` VARCHAR(255) NOT NULL," .
        "`class` VARCHAR(255) NOT NULL," .
        "`daily_price` VARCHAR(255) NOT NULL," .
        "`weekly_price` VARCHAR(255) NOT NULL," .
        "`monthly_price` VARCHAR(255) NOT NULL," .
        "`discount` VARCHAR(255) NOT NULL," .
        "`percent_discount` VARCHAR(255) NOT NULL," .
        "`png` VARCHAR(255) NOT NULL," .
        "`image_front` VARCHAR(255) NOT NULL," .
        "`image_side` VARCHAR(255) NOT NULL," .
        "`image_frontside` VARCHAR(255) NOT NULL," .
        "`image_back` VARCHAR(255) NOT NULL," .
        "`image_backside` VARCHAR(255) NOT NULL," .
        "`coupe_inetrior` VARCHAR(255) NOT NULL," .
        " PRIMARY KEY id  (`id`)) $this->collate_charset;";