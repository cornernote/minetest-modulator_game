<?php
/**
 * GameWiki for Minetest
 *
 * Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
 *
 * Source Code: https://github.com/cornernote/minetest-cornernote_game
 * License: GPLv3
 */

// this is the title of your GameWiki
$GLOBALS['name'] = 'Minetest CoRNeRNoTe\'S GaMe';

// the main link on the menu
$GLOBALS['brand_url'] = 'https://github.com/cornernote/minetest-cornernote_game';

// this is the name of your SQLite3 database file
$db = new SQLite3('data/wiki.db');
