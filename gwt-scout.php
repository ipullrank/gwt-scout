<h1>GWT Scout by Michael King (@ipullrank)</h1><hr/>
<?php

	/**
	 *  PHP script for downloading CSV files from Google Webmaster Tools
	 *  and inputting them into a MySQL database for easy visualization 
	 * 	with Ubiq.co or Chart.io
	 *
	 *  Copyright 2014 iPullRank. All Rights Reserved.
	 *
	 *  Licensed under the Apache License, Version 2.0 (the "License");
	 *  you may not use this file except in compliance with the License.
	 *  You may obtain a copy of the License at
	 *
	 *     http://www.apache.org/licenses/LICENSE-2.0
	 *
	 *  Unless required by applicable law or agreed to in writing, software
	 *  distributed under the License is distributed on an "AS IS" BASIS,
	 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	 *  See the License for the specific language governing permissions and
	 *  limitations under the License.
	 *
	 *  @author: Michael King <mike@ipullrank.com>
	 *  @link:   https://github.com/ipullrank/gwt-to-mysql/
	 */

	 
set_time_limit(0);
include_once "inc/gwtdata.php";
include_once "inc/gwt-parsing.php";
include_once "inc/class.MySQL.php";

// Set your database credentials in the following variables;

$db = ''; 		// name of database
$dbuser = ''; 	// database user
$dbpw = ''; 	// database password
$dbhost = ''; 	// database host 

// Set your Google Webmaster Tools credentials in the following variables
$email = ''; 	// email address
$passwd = '';	// password

try {

	$gdata = new GWTdata();

	if($gdata->LogIn($email, $passwd) === true)
	{
		$sites = $gdata->GetSites();
		foreach($sites as $site)
		{
			$gdata->DownloadCSV($site, "csv");
		}
		$files = $gdata->GetDownloadedFiles();
		print_r($files);
		foreach($files as $file)
		{
			echo "Saved $file<br>";
		}
		
	}
	unset($files);
	unset($gdata);
} 
catch (Exception $e) {
	die($e->getMessage());
}


$files = scandir('csv/');

foreach($files as $file) {
	if (($file != '.') && ($file != '..'))
	{

		$pieces = explode ("~",str_replace(".csv","",$file));
		// 0 = type, 1 = domain, 2 = date, 3 = time

		$filename = "csv/".$file;
		csvToMySql($filename,",",$pieces[0],$pieces[1],$pieces[2],$pieces[3],$db,$dbuser,$dbpw,$dbhost);
		unlink($filename);
		
	}
}


?>
