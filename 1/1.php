<?php
$a = 0;
$mas = range(0,100);
$len = count($mas);
for ($i = 0; $i < $len; $i++){
    if (strrpos($mas[$i], "2") !== false) {
        $len++;
        for ($j = $len - 1; $j > $i; $j--){
                $mas[$j] = $mas[$j - 1];
        }        
        $i++;
        $mas[$i] = $a;
    }

}
print_r($mas);
?>
