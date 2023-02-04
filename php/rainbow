<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title></title>
</head>
<body>
<?php
// set_time_limit(0);
$im = imagecreatetruecolor(0x1000, 0x1000);
$x = $y = 0;

// Version 1
for($r = 0; $r < 0x100; ++$r)
{
 for($g = 0; $g < 0x100; ++$g)
 {
  for($b = 0; $b < 0x100; ++$b)
  {
   $color = imagecolorallocate($im, $r, $g, $b);
   imagesetpixel($im, $x, $y, $color);

   if($x < 0xFFF)
   {
    ++$x;
   }
   else
   {
    $x = 0;
    ++$y;
   }
  }
 }
}

// Version 2
// for($h = 0; $h < 0x1000000; ++$h)
// {
//  $x = $h % 0x1000;
//  $r = $h >> 16 & 0xFF;
//  $g = $h >> 8 & 0xFF;
//  $b = $h & 0xFF;
//
//  $color = imagecolorallocate($im, $r, $g, $b);
//  imagesetpixel($im, $x, $y, $color);
//
//  if($x === 0xFFF)
//  {
//   ++$y;
//  }
// }

header('Content-type: image/png');
imagepng($im);
?>
</body>
</html>