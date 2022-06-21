<?php

$output_file="output.txt";

if ($_POST) {

	$response = key($_POST) . current($_POST);
	$response_fix = str_replace("_", "+", $response) . "=";
	
	shell_exec("echo $response_fix | base64 -d | tr '~~' '\\n' > $output_file");
	shell_exec("echo -e '\n'  >> $output_file");
	
}
?>