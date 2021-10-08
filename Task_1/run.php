<?php
	$firstNumber = $_SERVER['argv'][1];
	$secondNumber = $_SERVER['argv'][2];
	if (count($_SERVER['argv'])-1 > 2) {
		echo "Ошибка (больше двух аргументов)";
	} else if ($firstNumber > $secondNumber) {
		echo "Ошибка (первый аргумент должен быть больше второго)";
	} else {
		for ($i = $firstNumber; $i < $secondNumber; $i++) {
			if($i%3 == 0){	
				if($i%5 == 0){
					echo "FooBar ";
				} else {
					echo "Foo ";
				}
			} else if ($i%5 == 0) {
				echo "Bar ";
			} else {
				echo $i . " ";
			}
		}
	}
