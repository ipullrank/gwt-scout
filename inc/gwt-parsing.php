<?php 

function csv_to_array($filename='', $delimiter=',')
{
	if(!file_exists($filename) || !is_readable($filename))
		return FALSE;
	
	$header = NULL;
	$data = array();
	if (($handle = fopen($filename, 'r')) !== FALSE)
	{
		while (($row = fgetcsv($handle, 1000, $delimiter)) !== FALSE)
		{
			if(!$header)
				$header = $row;
			else
				$data[] = array_combine($header, $row);
		}
		fclose($handle);
	}
	return $data;
}

function csvToMySql($filename,$delimiter=',',$table,$domain,$date,$time,$dbname,$dbuser,$dbpw,$dbhost='localhost') // add domain, date and time
{
	$time = str_split($time,2);
	$finalTime = $time[0] . ':' . $time[1] . ':' . $time[2];
	$data = csv_to_array($filename,$delimiter);
	try{
		
		$db = new MySQL($dbname,$dbuser,$dbpw,$dbhost);
	}
	catch (Exception $e) {
		echo $db->lastError;
		die($e->getMessage());
	}
	
	$dataCount = count($data);
	
	for ($i=0;$i<$dataCount;$i++)
	{
		
		$data[$i]['domain'] = $domain;
		$data[$i]['date'] = $date;
		$data[$i]['time'] = $finalTime;
		unset($data[$i]['Change']);
		print_r($data[$i]);
		
		// add domain, date and time to array item

		try{
			$db->Insert($data[$i], strtolower($table));
			echo $db->lastError;
		}
		catch (Exception $e) {
			echo $db->lastError;
			die($e->getMessage());
		}
		
	}
}
