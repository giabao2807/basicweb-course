<!DOCTYPE html>
<html lang="en">
<head>
    <title>lab1</title>
</head>
<body>
    <?php
        echo "Tinh 10!!" , "<br>";
        $a=10;
        $p=1;
        for($i=1;$i<=10;$i++){
            if ($i%2==0){
                $p*=$i;
            }
        }
        echo "10!!= ".$p;
    ?>
</body>
</html>