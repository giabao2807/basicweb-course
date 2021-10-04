<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Testing page</title>
</head>
<body>
    <?php 
        echo "giabao"."<br>";
        $a=10;
        $b=0;
        $c= @($a*$b);
        echo "Gia tri c bang ".$c , "<br>";
         

        $c=array('a'=>1,
                'b'=>2,
                'c'=>3);
        
        foreach ($c as $value)
        {
            echo $value , "\n";
        }
        echo "<br>";
        foreach ($c as $key=>$value)
        {
            echo $key, "=" , "$value", "<br>";
        }
    ?>
</body>
</html> 